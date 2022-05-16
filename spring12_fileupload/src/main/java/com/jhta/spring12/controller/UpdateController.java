package com.jhta.spring12.controller;

import java.io.File;
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
import com.jhta.spring12.vo.FormData;

@Controller
public class UpdateController {
	@Autowired private ServletContext sc;
	@Autowired private FileService service;
	
	@GetMapping("/file/update")
	public String updateForm(int filenum,Model model) {
		FileInfoVo vo=service.select(filenum);
		model.addAttribute("vo",vo);
		return "fileupdate";
	}
	
	@PostMapping("/file/update")
	public String update(FormData data, 
			Model model) {
		String path=sc.getRealPath("/resources/upload");
		MultipartFile file1=data.getFile1();
		try {
			if(!file1.isEmpty()) { //전송된 파일이 있는 경우
				String orgfilename=file1.getOriginalFilename(); 
				String savefilename=UUID.randomUUID()+"_"+orgfilename; 
				InputStream is=file1.getInputStream();
				FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
				FileCopyUtils.copy(is, fos);
				is.close();
				fos.close();
				
				FileInfoVo vo=service.select(data.getFilenum());
				File file=new File(path+"\\"+vo.getSavefilename());
				file.delete();
				
				service.update(new FileInfoVo(data.getFilenum(),data.getWriter(),data.getTitle(),
						data.getContent(),orgfilename,savefilename,file1.getSize()));
			}else { //전송된 파일이 없는 경우
				service.update(new FileInfoVo(data.getFilenum(),data.getWriter(),data.getTitle(),
						data.getContent(),null,null,0));
			}

		model.addAttribute("code","success");
		}catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		
		
		
		
		
		
		
		
		
		//파일 업로드하기
		
		
		
		return "result";
	}
}
