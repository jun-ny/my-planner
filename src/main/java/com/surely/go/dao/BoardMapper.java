package com.surely.go.dao;


import java.util.ArrayList;
import java.util.HashMap;


import com.surely.go.vo.BoardVO;

public interface BoardMapper {

	public int boardWrite(BoardVO board);
	public ArrayList<HashMap<String, Object>> boardList(HashMap<String, Object> map);

	
}
