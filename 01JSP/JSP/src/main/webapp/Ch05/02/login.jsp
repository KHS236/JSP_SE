<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	//로그인 처리시 확인해야할 것
	//01 파라미터 확인
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	//02 유효성 검사----------------------------------------------
	//isEmpty() -> 비어있다면? (입력을 하지 않았다면)
	if(username.isEmpty()){
		request.setAttribute("username_msg", "username을 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		//분기처리상황 여러번 포워딩 해야하는 경우 return;을 꼭 붙여주는게 안전하다
		return ;
	}
	if(password.isEmpty()){
		request.setAttribute("password_msg", "password을 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return ;
	}
	
	//03 관련 서비스 실행--------------------------------------------
	//03-01) username 과 동일한 계정이 있는지 확인 가져와야함
	if(!username.equals("admin")){
		request.setAttribute("username_msg", "해당 계정이 존재하지 않음");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return ;
	}
	//03-02) password 의 값이 입력한 값이랑 동일한지 확인
	if(!password.equals("1234")){
		request.setAttribute("password_msg", "패스워드 일치하지 않음");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return ;
	}
	//03-03) session에 해당 계정의 작업에 필요한 속성 저장
	session.setAttribute("isAuth",true);
	session.setAttribute("role","ROLE_ADMIN");
	session.setMaxInactiveInterval(30); //30초만 세션유지
	
	//04 뷰로 이동---------------------------------------------------
	response.sendRedirect("./main.jsp");

%>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    