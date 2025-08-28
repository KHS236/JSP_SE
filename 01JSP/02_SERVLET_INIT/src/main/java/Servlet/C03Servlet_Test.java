package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/main.do")

public class C03Servlet_Test extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GET /main.do...");
//		req.getRequestDispatcher("위치경로").forward(req, resp);
		//doGet의 HttpServletRequest에서 받아온 내장객체 포워딩해서
		//서블릿으로만 접근할 수 있는 WEB-INF파일에 접근main.jsp 실행
		HttpSession session = req.getSession();	
		if(session.getAttribute("message")!=null ) {
			String message = (String)session.getAttribute("message");
			session.removeAttribute("message");
			
			req.setAttribute("message", message);
		}	
		req.getRequestDispatcher("WEB-INF/main.jsp").forward(req, resp);
	}
	//서블릿에서 redirect / foward로 접근하는게 기본 방식
	

	

}
