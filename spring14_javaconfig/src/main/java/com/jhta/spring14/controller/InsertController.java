package com.jhta.spring14.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.spring14.service.BoardService;
import com.jhta.spring11.vo.BoardVo;

@Controller
public class InsertController {
	@Autowired BoardService service;
	
	@GetMapping("/board/insert")
	public String insertForm() {
		return "insert";
	}
	@PostMapping("/board/insert")
	public String insert(BoardVo vo,Model model) {
		service.insert(vo);
		try {
			model.addAttribute("msg","등록성공");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("msg","등록실패");
		}
		return "result";
	}
}
