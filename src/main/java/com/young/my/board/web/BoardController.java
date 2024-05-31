package com.young.my.board.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.young.my.board.service.BoardService;
import com.young.my.board.vo.BoardVO;
import com.young.my.board.vo.ReplyVO;
import com.young.my.board.vo.SearchVO;
import com.young.my.member.vo.MemberVO;


@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping("/boardView")    // 추가 modelattribute searchvo를 매개변수로 받고, 화면에서 사용하기 위해 
	public String boardView(Model model, @ModelAttribute("searchVO") SearchVO searchVO) {
		ArrayList<BoardVO> boardList = boardService.getBoardList(searchVO); // 추가 매개변수 추가(검색조건)
		model.addAttribute("boardList", boardList);
		return "board/boardView";
	}
	
	
	@RequestMapping("/boardWriteView")
	public String boardWriteView(HttpSession session) {
		if(session.getAttribute("login") == null) {
			return "redirect:/loginView";
		}
		return "board/boardWriteView";
	}
	@RequestMapping("/boardWriteDo")
	public String boardWriteDo(HttpSession session, BoardVO board) throws Exception {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		board.setMemId(vo.getMemId());
		boardService.writeBoard(board);
		
		return "redirect:/boardView";
	}
	@RequestMapping("/boardDetailView")
	public String boardDetailView(int boardNo
			, Model model) throws Exception {
		System.out.println(boardNo);
		BoardVO vo = boardService.getBoard(boardNo);
		List<ReplyVO> replyList = boardService.getReplyList(boardNo);
		model.addAttribute("board", vo);
		model.addAttribute("replyList", replyList);
		
		return "board/boardDetailView";
	}
	@RequestMapping(value="/boardEditView"
			, method=RequestMethod.POST)
	public String boardEditView(int boardNo
			, Model model) throws Exception {
		BoardVO vo = boardService.getBoard(boardNo);
		model.addAttribute("board", vo);
		
		return "board/boardEditView";
	}
	@RequestMapping("/boardEditDo")
	public String boardEditDo(BoardVO vo, Model model, RedirectAttributes re) throws Exception {
		boardService.updateBoard(vo);
		return "redirect:/boardView";
	}
	@RequestMapping(value="/boardDel", method=RequestMethod.POST)
	public String boardDel(int boardNo) throws Exception {
		boardService.deleteBoard(boardNo);
		return "redirect:/boardView";
	}
	
	
	
	
	
	
}
	