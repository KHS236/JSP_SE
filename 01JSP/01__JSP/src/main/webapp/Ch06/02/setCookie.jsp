<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie1 = new Cookie ("c1","v1"); //쿠키1
	cookie1.setMaxAge(60*10); //유지시간 10분
	cookie1.setPath("/"); //도메인 내의 모든 URI에서 접근 가능한 Path
						//http://localhost:8090 내 모든 페이지

	Cookie cookie2 = new Cookie ("c2","v2");
	cookie2.setMaxAge(60*10);
	cookie2.setPath("./");//현재 위치의 폴더에서 접근 가능한 path
						//http://localhost:8090/JSP/Ch06/02/*
	
	Cookie cookie3 = new Cookie ("c3","v3");
	cookie3.setMaxAge(60*10);
	cookie3.setPath("/JSP/Ch01");
					//특정 URI기준으로 쿠키를 활성화
	
	
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	
%>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>