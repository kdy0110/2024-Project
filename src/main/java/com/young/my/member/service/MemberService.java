	package com.young.my.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.young.my.member.dao.IMemberDAO;
import com.young.my.member.vo.InbodyVO;
import com.young.my.member.vo.MemberVO;
import com.young.my.member.vo.MoveVO;

@Service
public class MemberService {

	@Autowired
	IMemberDAO dao;  // new 를 하지 않아도 사용가능 

	//회원가입	
	public void registMember(MemberVO vo) throws Exception {
			int result = dao.registMember(vo);
			if(result == 0) {
				throw new Exception();
			}
	}
	//회원조회
	public MemberVO loginMember(MemberVO vo) {
		return dao.loginMember(vo);

		}
	//수정하기
	   public void updateMember(MemberVO vo) throws Exception {
	      int result = dao.updateMember(vo);
	      if(result == 0) {
	         throw new Exception();
	      }
	   }
	   // 인바디
	   public void inbodyMember(InbodyVO vo) throws Exception {
			int result = dao.inbodyMember(vo);
			if(result == 0) {
				throw new Exception();
			}
	}
	   // 칼로리
	   public MoveVO moveMember(MoveVO vo) throws Exception {
			MoveVO result = dao.moveMember(vo);
			
			return result;
	}
}
