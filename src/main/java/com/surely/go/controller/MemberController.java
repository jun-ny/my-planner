package com.surely.go.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.surely.go.service.BoardService;
import com.surely.go.service.MemberService;
import com.surely.go.vo.MemberVO;

@Controller
@RequestMapping(value="/member", method=RequestMethod.GET)
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private BoardService bservice;
	
	@RequestMapping(value="/joinForm", method=RequestMethod.GET)
	public String joinForm() {
		return "/member/joinForm";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(MemberVO member) {
		String page = service.memberJoin(member); 
		return page;
	}
	
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public String loginForm( ) {
		return "/member/loginForm";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String memberLogin(MemberVO member) {
		String page = service.memberLogin(member);
		return page;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String memberLogout() {
		service.memberLogout();
		return "redirect:/";
	}
	
	@RequestMapping(value="/cheer", method = RequestMethod.GET)
	public String cheer(
			@RequestParam(value = "page", defaultValue= "1") int page,
			@RequestParam(value = "searchText", defaultValue = "") String searchText, 
			@RequestParam(value = "searchType", defaultValue = "none") String searchType, 
			Model model) {
		
		ArrayList<HashMap<String, Object>> list = bservice.boardList(searchText, searchType);
		
	
		model.addAttribute("list", list);
		
		System.out.println(list.size());
		return "member/cheer";
	}
	
}
