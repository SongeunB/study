package com.jhta.spring12.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.spring12.service.FileService;
import com.jhta.spring12.vo.FileInfoVo;

@Controller
public class ListController {
	@Autowired FileService service;
	
	@RequestMapping("/file/list")
	public String list(Model model) {
		List<FileInfoVo> list=service.list();
		model.addAttribute("list",list);
		return "list";
	}
}
