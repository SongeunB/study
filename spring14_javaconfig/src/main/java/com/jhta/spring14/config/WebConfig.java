package com.jhta.spring14.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

//web.xml을 대신하는 클래스
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {
	//root-context.xml 에 대한 기능을 갖는 클래스 지정
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {RootConfig.class};
	}
	//servlet-context.xml 에 대한 기능을 갖는 클래스 지정
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {ServletConfig.class};
	}
	//디스패쳐 서블릭 매핑설정
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
	//필터설정하기
	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter filter=new CharacterEncodingFilter();
		filter.setEncoding("utf-8");
		filter.setForceEncoding(true);
		return new Filter[] {filter};
	}
}
