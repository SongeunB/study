package com.jhta.spring12.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.spring12.vo.FileInfoVo;

import data.mybatis.mapper.FileMapper;

@Service
public class FileService {
	@Autowired private FileMapper mapper;
	public void setMapper(FileMapper mapper) {
		this.mapper = mapper;
	}
	public int insert(FileInfoVo vo) {
		return mapper.insert(vo);
	}
	public List<FileInfoVo> list() {
		return mapper.list();
	}
	public FileInfoVo select(int filenum) {
		return mapper.select(filenum);
	}
	public int delete(int filenum) {
		return mapper.delete(filenum);
	}
	public int update(FileInfoVo vo) {
		return mapper.update(vo);
	}
}
