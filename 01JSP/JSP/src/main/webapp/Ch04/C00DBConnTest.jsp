<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*,java.util.*,Ch04.*" %>
    
<%
	//DB CONN DATA
	String id = "root";
	String pw = "1234";
	String url = "jdbc:mysql://localhost:3306/opendatadb";
	
	//JDBC 참조변수
	Connection conn = null;			
	PreparedStatement pstmt = null; 
	ResultSet rs = null;			

	List<Sample1Dto> list = null;
//	연결작업
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver Loading Success...");
		conn = DriverManager.getConnection(url,id,pw);
		System.out.println("DB CONNECTED...");
		
//		Insert코드
//		sql query객체 생성
		pstmt = conn.prepareStatement("SELECT * FROM sample1");
		
		rs = pstmt.executeQuery();
		list = new ArrayList();
		Sample1Dto dto=null;
		
		if(rs!=null) {
			while(rs.next()) {
				dto=new Sample1Dto();
				dto.setNo(rs.getString("no"));
				dto.setCol1(rs.getString("col1"));
				dto.setCol2(rs.getString("col2"));
				dto.setCol3(rs.getString("col3"));
				list.add(dto);
				/* System.out.print(rs.getString("no")+"_");
				System.out.print(rs.getString("col1")+"_");
				System.out.print(rs.getString("col2")+"_");
				System.out.println(rs.getString("col3")); */
			}
		}
	}catch(ClassNotFoundException e1) {
		System.out.println("클래스 부재 예외발생");
	}catch(SQLException e2) {
		System.out.println("SQL 예외발생");
	}finally {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		for(Sample1Dto dto : list){
			%>
			Dto : <%=dto  %> <br/>
			<%
		}
	%>




</body>
</html>