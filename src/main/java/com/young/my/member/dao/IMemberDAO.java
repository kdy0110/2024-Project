package com.young.my.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.young.my.member.vo.InbodyVO;
import com.young.my.member.vo.MemberVO;
import com.young.my.member.vo.MoveVO;


@Mapper
public interface IMemberDAO {

		// 회원가입
		public int registMember(MemberVO vo);
		// 회원조회
		public MemberVO loginMember(MemberVO vo);
		// 수정하기
		public int updateMember(MemberVO vo);
		// 인바디
		public int inbodyMember(InbodyVO vo);
		// 칼로리
		public MoveVO moveMember(MoveVO vo);
}
