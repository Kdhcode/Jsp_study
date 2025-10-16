<%@page import="java.util.Date"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<!-- out 내장 객체 사용 예 -->
	<% 
		out.println("Hello!");
		out.println("Java Server Page 입니다.");		
	%>
	<br>
	<% 
		out.println("Hello!\n\n\n");
		out.println("Java Server Page 입니다.");		
	%>
	<br>
	<% 
		out.println("Hello!<br>");
		out.println("Java Server Page 입니다.");		
	%>
</body>
</html>