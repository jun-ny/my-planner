package com.surely.go.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.surely.go.vo.BoardVO;


@Repository
public class BoardDAO {

	@Autowired
	private SqlSession session;

	
	public int boardWrite(BoardVO board) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int cnt = 0;
		try {
			cnt = mapper.boardWrite(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(board.getBoard_title());
		return cnt;
		
	}
	
	public ArrayList<HashMap<String, Object>> boardList(HashMap<String, Object> map) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		ArrayList<HashMap<String,Object>> list = null;
	
		try {
	list = mapper.boardList(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
			return list;
	}
		
	}
	

	

