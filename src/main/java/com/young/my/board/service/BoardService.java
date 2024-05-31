package com.young.my.board.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.young.my.board.dao.IBoardDAO;
import com.young.my.board.vo.BoardVO;
import com.young.my.board.vo.ReplyVO;
import com.young.my.board.vo.SearchVO;

@Service
public class BoardService {

	@Autowired
	IBoardDAO dao;
	//게시글 조회	
		public ArrayList<BoardVO> getBoardList(SearchVO searchVO){  // 추가 매개변수 추가(검색조건)
			return dao.getBoardList(searchVO);
		}
		//게시글 등록
		public void writeBoard(BoardVO vo) throws Exception {
			int result = dao.writeBoard(vo);
			if(result == 0) {
				throw new Exception();
			}
		}
		public BoardVO getBoard(int boardNo) throws Exception {
			BoardVO result = dao.getBoard(boardNo);
			if(result == null) {
				throw new Exception();
			}
			return result;
		}
		public List<ReplyVO> getReplyList(int boardNo) {
			return null;
		}
		// 게시글 수정
		public void updateBoard(BoardVO vo) throws Exception {
			int result = dao.updateBoard(vo);
			if(result == 0) {
				throw new Exception();
			}
		}
		// 게시글 삭제
		public void deleteBoard(int boardNo) throws Exception {
			int result = dao.deleteBoard(boardNo);
			if(result == 0) {
				throw new Exception();
			}
		}
	}
