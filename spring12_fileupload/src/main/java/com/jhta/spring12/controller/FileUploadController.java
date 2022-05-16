package com.jhta.spring12.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.jhta.spring12.service.FileService;
import com.jhta.spring12.vo.FileInfoVo;

@Controller
public class FileUploadController {
	@Autowired private ServletContext sc;
	@Autowired private FileService service;

	@GetMapping("/file/upload")
	public String uploadForm() {
		return "fileupload";
	}
	@PostMapping("/file/upload")
	public String upload(String writer,String title,String content,
			MultipartFile file1, //전송된 파일에 대한 정보를 갖는 객체
			Model model) {
		//업로드할 경로
		String path=sc.getRealPath("/resources/upload");
		System.out.println(path);
		String orgfilename=file1.getOriginalFilename(); //전송된 파일명
		String savefilename=UUID.randomUUID()+"_"+orgfilename; //중복되지 않는 저장될 파일명 만들기
		service.insert(new FileInfoVo(0,writer,title,content,orgfilename,savefilename,file1.getSize()));
		//파일 업로드하기
		try {
			InputStream is=file1.getInputStream();
			FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
			FileCopyUtils.copy(is, fos);
			is.close();
			fos.close();
			model.addAttribute("code","success");
		}catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		
		
		return "result";
	}
}






