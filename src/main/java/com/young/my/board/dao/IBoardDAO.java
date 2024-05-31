package com.young.my.board.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;


import com.young.my.board.vo.BoardVO;
import com.young.my.board.vo.ReplyVO;
import com.young.my.board.vo.SearchVO;


@Mapper
public interface IBoardDAO {

		// 게시글조회
		public ArrayList<BoardVO> getBoardList(SearchVO searchVO);  // 추가 매개변수 추가(검색조건)
		// 게시글등록
		public int writeBoard (BoardVO vo);
		// 게시글 상세조회
		public BoardVO getBoard(int boardNo);
		// 댓글 조회 
		public ReplyVO getReply(String replyNo);
		// 게시글 수정
		public int updateBoard(BoardVO vo);	
		// 게시글 삭제
		public int deleteBoard(int boardNo);
}
