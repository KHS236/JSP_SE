<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JOIN PAGE</h1>
	<!-- 로그인 버튼을 누르면 프로젝트 경로가 자동으로 빠져서 페이지 연결 실패인데
		${pageContext.request.contextPath}로 프로젝트 경로를 가져온다 
		eclipse에서만 이럼 (프로젝트 여러개를 관리할 수 있는 프로그램이라서)-->
	<form action="${pageContext.request.contextPath}/join.do" method="post">
	<div>
	<label>계정명 : </label> <span>${username_msg}</span>	<br/>
		<input name="username" />
	</div>
	<div>
		<label>패스워드 : </label> <span>${password_msg}</span> <br/>
		<input type="password" name="password" /> 
	</div>
	<div>
		<button>회원가입</button>	
	</div>	
	</form>
</body>
</html>