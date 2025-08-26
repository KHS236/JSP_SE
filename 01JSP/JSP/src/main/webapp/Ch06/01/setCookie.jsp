<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
	Cookie
	문자열 데이터만 저장가능
	4kbyte 이하의 공간을 차지
	여러개의 쿠키 설정가능(최대300개)
	도메인당 20개까지 저장가능
	저장한도를 초과하면 최근에 사용되지 않는 쿠키부터 자동삭제
	---
	암호화 된 쿠키 == 토큰
	---
	http://localhost:8090/JSP/Ch06/01/setCookie.jsp
 -->
<%
	Cookie cookie1 = new Cookie ("cookie1","value1");
	//쿠키의 유지기간(기본값 : -1 (쿠키파일생성 X) , 브라우저가 종료될 때까지 쿠키 유지)	

	Cookie cookie2 = new Cookie ("cookie2","value2");
	cookie2.setMaxAge(60*5); //쿠키 유지기간 설정 60초*5
	cookie2.setPath("/"); //현재 톰캣 안에 있는 모든 페이지에서 확인 가능
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	
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