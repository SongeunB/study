package com.jhta.spring11.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class BoardVo {
	private int num;
	private String writer;
	private String title;
	private String content;
	private int hit;
	private Date regdate;
	
}
