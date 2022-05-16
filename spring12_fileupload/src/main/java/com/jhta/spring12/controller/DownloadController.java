package com.jhta.spring12.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.spring12.service.FileService;
import com.jhta.spring12.vo.FileInfoVo;

@Controller
public class DownloadController {
	@Autowired private FileService service;
	@Autowired ServletContext sc;
	
	@GetMapping("/file/download")
	public String download(int filenum,Model model) {
		FileInfoVo vo=service.select(filenum);
		String path=sc.getRealPath("/resources/upload");
		File f=new File(path+"\\"+vo.getSavefilename());
		String name=vo.getOrgfilename();
		long filesize=vo.getFilesize();
		//다운로드에 필요한 정보를 모델객체에 담기
		model.addAttribute("file",f);
		model.addAttribute("filename",name);
		model.addAttribute("filesize",filesize);
		return "filedownloadview";
		
	}
}
