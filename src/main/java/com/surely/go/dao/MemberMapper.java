package com.surely.go.dao;

import com.surely.go.vo.MemberVO;

public interface MemberMapper {
	
	public int memberJoin(MemberVO member);
	public MemberVO memberSelectOne(String member_id);

}
