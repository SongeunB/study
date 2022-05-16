package com.jhta.spring12.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class FileInfoVo {
	private int filenum;
	private String writer;
	private String title;
	private String content;
	private String orgfilename;
	private String savefilename;
	private long filesize;
}
