package com.jhta.spring14.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.spring11.vo.BoardVo;

import data.mybatis.mapper.Boardmapper;

@Service
public class BoardService {
	@Autowired private Boardmapper mapper;
	public void setMapper(Boardmapper mapper) {
		this.mapper = mapper;
	}
	public int insert(BoardVo vo) {
		return mapper.insert(vo);
	}
	public List<BoardVo> selectList(HashMap<String, Object> map) {
		return mapper.list(map);
	}
	public int getCount(HashMap<String, Object> map) {
		return mapper.count(map);
	}
	public int delete(int num) {
		return mapper.delete(num);
	}
	public int update(BoardVo vo) {
		return mapper.update(vo);
	}
	public BoardVo detail(int num) {
		return mapper.detail(num);
	}
	public int addHit(int num) {
		return mapper.addHit(num);
	}
	public BoardVo detailBefore(int num) {
		return mapper.detailBefore(num);
	}
	public BoardVo detailAfter(int num) {
		return mapper.detailAfter(num);
	}
}
