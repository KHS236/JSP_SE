<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
    
    
    %>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>03.JSP PAGE</h1>
	USERNAME : ${param.username}<br/>
	PASSWORD : ${param.username}<br/>
	C02_VALUE : ${C02}<br/>
	C03_VALUE : ${C03}<br/>

</body>
</html>