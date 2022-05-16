package com.jhta.spring12.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class FormData {
	private int filenum;
	private String writer;
	private String title;
	private String content;
	private MultipartFile file1;
}
