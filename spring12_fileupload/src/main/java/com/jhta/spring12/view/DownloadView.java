package com.jhta.spring12.view;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

//커스텀뷰 - 사용자가 직접 만드는 뷰(다운로드창으로 응답하는 뷰, 엑셀파일로 응답하는 뷰, pdf로 응답하는 뷰 ...)

public class DownloadView extends AbstractView {
	//뷰에서 해야할 일 구현 - 다운로드창으로 응답하기
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("application/octet-stream");
		File f=(File)model.get("file");
		long filesize=(Long)model.get("filesize");
		String filename=(String)model.get("filename");
		response.setContentLength((int)filesize);
		filename=URLEncoder.encode(filename,"utf-8");
		filename.replaceAll("\\+", "%20");
		response.setHeader("Content-Disposition", "attachment;filename="+filename);
		OutputStream os=response.getOutputStream();
		FileInputStream fis=new FileInputStream(f);
		FileCopyUtils.copy(fis, os);
		fis.close();
		os.close();
	}
}







