package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//@WebFilter("필터를 적용할 경로(모든 o / 특정 o)")
//@WebFilter("/index.do")

public class HomeFilter_2 implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		//Request가 Servlet으로 전달되기 전 코드
		
		System.out.println("[FILTER] HOME FILTER_2 START..");
		chain.doFilter(req, resp);//필터체이닝
		
		//Response가 Client로 전달되기 전
		System.out.println("[FILTER] HOME FILTER_2 END..");
		
		
		
	}
	
	
	
	
	
	
}
