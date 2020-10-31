package com.surely.go.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.surely.go.service.BoardService;
import com.surely.go.util.FileService;
import com.surely.go.vo.BoardVO;


@Controller
@RequestMapping(value="/board", method=RequestMethod.GET)
public class BoardController {
	
	@Autowired
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@Autowired
	private BoardService service;

	@RequestMapping(value="/CheerUp", method=RequestMethod.GET)
	public String CheerUp() {
		return "/board/CheerUp";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String boardWrite(BoardVO board) {
		
		System.out.println(board.getBoard_title());
		service.boardWrite(board);
		
		return "redirect:/member/cheer";
	}
	
	@RequestMapping(value="Profile", method= RequestMethod.GET)
	public String Profile() {
		return "/board/Profile";
	}

}
