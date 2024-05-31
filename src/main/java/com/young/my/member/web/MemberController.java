package com.young.my.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.young.my.member.service.MemberService;
import com.young.my.member.vo.InbodyVO;
import com.young.my.member.vo.MemberVO;
import com.young.my.member.vo.MoveVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@RequestMapping("/registView")
	public String registView() {
		return "member/registView";
	}

	@RequestMapping("/registDo")
	public String registDo(HttpServletRequest request, MemberVO member, RedirectAttributes re) {
		member.setMemPw(passwordEncoder.encode(request.getParameter("memPw")));
		try {
			memberService.registMember(member);
			System.out.println(member);
		} catch (Exception e) {
			e.printStackTrace();
			return "errorView";
		}
		// RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "회원가입이 정상적으로 처리 되었습니다.");
		return "redirect:/";

	}

	@RequestMapping("/loginView")
	public String loginView() {
		return "member/loginView";
	}

	@RequestMapping("/loginDo")
	public String loginDo(MemberVO vo, HttpSession session, boolean remember, String fromURL, RedirectAttributes re,
			HttpServletResponse resp) {
		MemberVO login = memberService.loginMember(vo);

		if (login == null) {
			re.addFlashAttribute("msg", "아이디를 확인해 주세요.");
			return "redirect:/loginView";
		}
		boolean match = passwordEncoder.matches(vo.getMemPw(), login.getMemPw());
		if (!match) {
			re.addFlashAttribute("msg", "비번을 확인해 주세요.");
			return "redirect:/loginView";
		}
		if (login != null) {
			re.addFlashAttribute("msg", "로그인이 정상적으로 처리되었습니다.");
		}
//		System.out.println(login); 여기까지 출력이 되는지 확인!!!!
		session.setAttribute("login", login);
		return "redirect:/";
	}

	@RequestMapping("/logoutDo")
	public String logoutDo(HttpSession session, RedirectAttributes re) {
		// 세션 종료
		session.invalidate();
		re.addFlashAttribute("msg", "로그아웃 되셨습니다.");
		return "redirect:/";
	}

	@RequestMapping("/mypageView")
	public String mypageView(HttpSession session, Model model) {
		if (session.getAttribute("login") == null) {
			return "redirect:/loginView";
		}
		return "member/mypageView";
	}

	// 운동 연결!!
	@RequestMapping("/quadsView")
	public String quadsView() {
		return "exc/quadsView";
	}

	@RequestMapping("/exc1View")
	public String exc1View() {
		return "exc/exc1View";
	}

	@RequestMapping("/exc2View")
	public String exc2View() {
		return "exc/exc2View";
	}

	@RequestMapping("/updateDo")
	public String updateDo(MemberVO vo, HttpSession session, Model model) {
		try {
			System.out.println(vo);
			memberService.updateMember(vo);
			session.setAttribute("login", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("msg", "수정했따 이자식아!!!");
		return "member/mypageView";

	}

	@RequestMapping("/inbodyView")
	public String inbodyView() {
		return "member/inbodyView";
	}

	@RequestMapping("/inbodyDo")
	public String inbodyDo(HttpServletRequest request, InbodyVO vo, RedirectAttributes re, HttpSession session)
			throws Exception {

		MemberVO login = (MemberVO) session.getAttribute("login");
		vo.setMemId(login.getMemId());
		memberService.inbodyMember(vo);
		// RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "저장되었습니다.");
		return "redirect:/";

	}
	
	@RequestMapping("/movementView01")
	public String movementView01(Model model, HttpSession session)
			throws Exception {
		return "movement/movementView01";
	}
	// 칼로리
	@ResponseBody
	@RequestMapping("/move")
	public MoveVO move(Model model, HttpSession session, MoveVO vo)
			throws Exception {
		System.out.println(vo);
		System.out.println(vo.getCalPer());
		System.out.println(memberService.moveMember(vo));
		
		return memberService.moveMember(vo);
	}
	
}
