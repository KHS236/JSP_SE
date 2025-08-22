<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%
Scanner sc = new Scanner(System.in);
System.out.println("단 수 입력 : ");
int dan = sc.nextInt();
System.out.printf(" ====%d단====", dan);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
td {
	border: 1px solid;
	margin: 10px auto;
	width: 30px
}

tr {
	border: 1px solid;
	padding: 0 5px;
}

table {
	text-align: center;
}
</style>


</head>


<body>
	<!-- 
		단수 입력받아 해당 구구단 찍기 ( Table로 만들기 - 스크립틀릿)
	 -->
	<table>
		<summary><%="====" + dan + "단===="%></summary>
		<tbody>


			<%
			for (int i = 1; i < 10; i++) 
			{
			%>
			<tr>
				<td><%=dan%></td>
				<td>X</td>
				<td><%=i%></td>
				<td>=</td>
				<td><%=dan * i%></td>
			</tr>
			<%
			}
			%>
			
			<!-- 이게 무슨 노근본 문법이야 -->
		</tbody>
	</table>

</body>
</html>