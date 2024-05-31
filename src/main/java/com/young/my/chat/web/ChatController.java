package com.young.my.chat.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.young.my.chat.service.RoomService;
import com.young.my.chat.vo.ChatLogVO;
import com.young.my.member.vo.MemberVO;

@Controller
public class ChatController {

	@Autowired
	RoomService roomService;
	
	@RequestMapping("/chatView")
	public String chatView(HttpSession session, Model model) {
		MemberVO loginUser = (MemberVO) session.getAttribute("login");
		if (loginUser == null) {
			// 로그인되지 않는 사용자 처리
			return "redirect:/loginView";
		}
		List<ChatLogVO> chatList = roomService.getChatList(loginUser);
		model.addAttribute("chatList", chatList);
		
//		String userId = loginUser.getMemId(); // 세션에서 사용자 아이디 가져오기
		return "chat/chatView";
	 }
	 
	// 채팅 메세지 전송 처리
	@RequestMapping("/sendMessage")
	@ResponseBody
	public ResponseEntity<?> sendMEssage(@RequestBody ChatLogVO ChatVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 채팅 메세지를 데이터베이스에 저장
		roomService.insertChat(ChatVO);
		System.out.println("메세지 저장");
		System.out.println(ChatVO);
		map.put("msg", "Y");
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}
	
	// 채팅 메세지 전달
	@MessageMapping("/hello/{roomNo}") // 클라이너트로부터 메세지 수
	@SendTo("/subscribe/chat/{roomNo}") // 수신한 내용을 클라이언트에게 전달
	public ChatLogVO broadcasting(ChatLogVO chatVO) {
		roomService.insertchat(chatVO);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/ddd HH:mm");
		chatVO.setSendDate(sdf.format(new Date()));
		return chatVO;
	}
	
	// 채팅 내역 조회
////	@PostMapping("/getchatList")
////	@ResponseBody
////	public List<ChatLogVO> chatView(@RequestBody RequestData requestData){
////		int roomNo = requestData.getRoomNo();
////		return roomService.getChatList(roomNo);
////	}
//	static class RequestData{
//		private int roomNo;
//		
//		public int getRoomNo() {
//			return roomNo;
//		}
//		
//		public void setRoomNo(int roomNo) {
//			this.roomNo = roomNo;
//		}
//	}
	
}
