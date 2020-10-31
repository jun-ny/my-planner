package com.surely.go.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.surely.go.dao.MemberDAO;
import com.surely.go.dao.MemberMapper;
import com.surely.go.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private HttpSession session;
	
	
	
	public String memberJoin(MemberVO member) {
		int cnt = dao.memberJoin(member);
		String page = "";
		if(cnt==0) {
			page = "redirect:/member/joinFail";
		} else {
			page = "redirect:/";
		}
		return page;
	}
	
	public MemberVO memberSelectOne(String member_id) {
		MemberVO member = dao.memberSelectOne(member_id);
		
		return member;
	}
	
	public String memberLogin(MemberVO member) {
		MemberVO loginCheck = dao.memberSelectOne(member.getMember_id());
		String page = "";
		if(loginCheck != null && loginCheck.getMember_pw().equals(member.getMember_pw())) {
			
			
			session.setAttribute("loginId", member.getMember_id());
			session.setAttribute("loginNm", loginCheck.getMember_nm());

			page = "redirect:/";
		} else {
			page = "redirect:/member/loginForm";
		}
		
		return page;
	}
	
	public void memberLogout() {
		session.removeAttribute("loginId");
	}
}
