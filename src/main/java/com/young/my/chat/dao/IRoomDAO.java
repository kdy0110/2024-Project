package com.young.my.chat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.young.my.chat.vo.ChatLogVO;
import com.young.my.member.vo.MemberVO;



@Mapper
public interface IRoomDAO {

		//채팅내용
		public List<ChatLogVO> getChatList(MemberVO vo);
		//채팅 내용 기록
		public int insertChat(ChatLogVO chatVO);
		

}
