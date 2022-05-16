package com.jhta.spring12.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.spring12.service.FileService;
import com.jhta.spring12.vo.FileInfoVo;

@Controller
public class DetailController {
	@Autowired FileService service;
	
	@RequestMapping("/file/detail")
	public String detail(int filenum,Model model) {
		FileInfoVo vo=service.select(filenum);
		model.addAttribute("vo",vo);
		return "detail";
	}
}
