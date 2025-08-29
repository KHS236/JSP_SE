package Servlet;

//클라이언트가 요청 > req내장객체가 만들어지기 전 필터를 거치면서 필요한 작업 수행
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = {"/index.do"})

public class Home extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GET /index.do ...");
		req.getRequestDispatcher("/WEB-INF/index.jsp").forward(req,resp);
	}
	
	
	

}
