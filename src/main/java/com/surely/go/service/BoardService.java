package com.surely.go.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.surely.go.dao.BoardDAO;
import com.surely.go.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Autowired
	private HttpSession session;
	
	public int boardWrite(BoardVO board) {
		
		String member_id = (String)session.getAttribute("loginId");
		//member_id를 추가해야 됨 
		//write 자체는 제목과 내용만 받아오니까
		board.setMember_id(member_id);
		
		int cnt = dao.boardWrite(board);

		System.out.println(member_id);
		System.out.println(cnt);
		return cnt;
		
	}
	
	
	public ArrayList<HashMap<String, Object>> boardList(String searchText, String searchType){
		HashMap<String, Object> map = new HashMap<>();
		map.put("searchText", searchText);
		map.put("searchType", searchType);
		
		ArrayList<HashMap<String,Object>> list = dao.boardList(map);

	
		
		return list;	
	}
	
}
