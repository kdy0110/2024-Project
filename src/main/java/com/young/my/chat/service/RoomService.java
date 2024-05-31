package com.young.my.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.young.my.chat.dao.IRoomDAO;
import com.young.my.chat.vo.ChatLogVO;
import com.young.my.member.vo.MemberVO;

@Service
public class RoomService {

	@Autowired
	IRoomDAO dao;
	
		
		//채팅내용
		public List<ChatLogVO> getChatList(MemberVO vo){
			return dao.getChatList(vo);
		}
		//채팅내용기록
		public void insertChat(ChatLogVO chatVO) {
			dao.insertChat(chatVO);
		}
		// 채팅내용기록 
		public int insertchat(ChatLogVO chatVO) {
			return dao.insertChat(chatVO);
		}
}
