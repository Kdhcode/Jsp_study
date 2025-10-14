<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%-- 1. JSP 주석 --%>
	<!-- 개발자 매모용, 클라이언트에 안 보이게 할 떄 -->
	
	<!-- 2. HTML 주석 -->
	<!-- HTML 문서에도 남겨야 할때  -->
	<!-- 클라이언트가 소스 보기를 하면 볼수 있음 -->
	
	<!-- 스크립틀릿 태그 -->
	<%! int data = 50; %>
	<%
		// 3. 자바 주석  (// 또는 /**/)
		// 자바 코드 내부(JSP 스크립틀릿이나 선언부 안)에서 사용하는 주석 
		out.println("Value: " + data);	
	%>
	
	
	
	
	
	
	
</body>
</html>