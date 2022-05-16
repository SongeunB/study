package com.jhta.spring12.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.spring12.service.FileService;
import com.jhta.spring12.vo.FileInfoVo;

@Controller
public class DeleteController {
	@Autowired private ServletContext sc;
	@Autowired FileService service;
	
	@RequestMapping("/file/delete")
	public String delete(int filenum,Model model) {
		try {
			FileInfoVo vo=service.select(filenum);
			String savefilename=vo.getSavefilename();
			String path=sc.getRealPath("/resources/upload");
			File file=new File(path+"\\"+savefilename);
			file.delete();
			service.delete(filenum);
			model.addAttribute("code","success");
		}catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "result";
	}
}
