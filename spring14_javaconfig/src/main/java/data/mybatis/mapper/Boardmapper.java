package data.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.spring11.vo.BoardVo;

//Mapper 인터페이스의 추상메소드 이름을 Mapper.xml파일의 sql구문의 id와 동일학게 만든다.
public interface Boardmapper {
	
	int insert(BoardVo vo);
	List<BoardVo> list(HashMap<String, Object> map);
	int count(HashMap<String, Object> map);
	int delete(int num);
	int update(BoardVo vo);
	int addHit(int num);
	BoardVo detail(int num);
	BoardVo detailBefore(int num);
	BoardVo detailAfter(int num);
}
