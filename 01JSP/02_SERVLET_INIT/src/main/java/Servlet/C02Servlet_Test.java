package Servlet;
//Request 요청 - 서블릿파일매핑 - 요청처리 - 결과 반환(웹페이지)

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

//@WebServlet("/TEST_02") //다른파일에 똑같은 거 있으면 실행 안 됨

public class C02Servlet_Test extends HttpServlet{

	@Override
	public void init() throws ServletException {
		//init == 서블릿 최초 실행(초기화) 함수
		System.out.println("C02Servlet_Test's INIT() invoke...");

	}
	
	
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		// 요청시마다 동작(새로고침) 함수
		System.out.println("C02Servlet_Test's SERVICE() invoke...");

	}


	@Override
	public void destroy() {
		//내용 변경시 동작하는 함수
		System.out.println("C02Servlet_Test's DESTROY() invoke...");


	}

	

}
