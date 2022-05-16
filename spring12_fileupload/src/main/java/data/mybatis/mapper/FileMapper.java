package data.mybatis.mapper;

import java.util.List;

import com.jhta.spring12.vo.FileInfoVo;

public interface FileMapper {
	int insert(FileInfoVo vo);
	List<FileInfoVo> list();
	FileInfoVo select(int filenum);
	int delete(int filenum);
	int update(FileInfoVo vo);
}
