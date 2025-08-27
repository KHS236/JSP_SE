<%@page import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import = "java.io.*" %>
    
<%
	String dirPath = pageContext.getServletContext().getRealPath("/")+"Ch07\\files\\";
	System.out.println("dirPath : " + dirPath);

	try{
		//INPUTSTREAM
		//인풋스트림 fin에 파일을 연결해준 것
		InputStream fin = new FileInputStream(dirPath+"test1.pdf");
		//OUTPUTSTREAM
		out.clear();
		//기존의 내장 객체 제거 (response outStrea을 닫고 버퍼 초기화 작업)
	
		out = pageContext.pushBody();
		//현재페이지의 바디영역에 out에 연결
		ServletOutputStream bout = response.getOutputStream();
		
		//Response Header Setting
		response.setHeader("Content-Type","application/octet-strea;cahrset-utf-8");
		response.setHeader("Content-Disposition","attachment; filename=test1.pdf");
		
		byte [] buff = new byte[4096];
		
		while(true){
			int data = fin.read(buff);
			if(data ==-1){
				break;
			}
			bout.write(buff,0,data);
			bout.flush();
		}
		bout.close();
		fin.close();
		/*http://192.168.5.50:8090/JSP/Ch07/04Download_SingleFile.jsp*/
		
		
		
	}catch(Exception e){
		
	}


%>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    