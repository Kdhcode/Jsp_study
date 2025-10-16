<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<!-- request 내장 객체로 폼 페이지로부터 아이디와 비밀번호를 전송받아 출력하기 -->
	<% 
		// 폼(입력양식)에서 입력한 한글을 처리하도록 request 내장 객체의 메소드에 문자 인코딩 설정
		request.setCharacterEncoding("UTF-8"); 
		
	%>
	<p>아이디: <%= request.getParameter("id") %></p>
	<p>비밀번호: <%= request.getParameter("passwd") %></p>
	
	<!-- EL 사용시 -->
	<!-- param -> request.getParameter()와 동일한 역활 -->
	<p>아이디: ${param.id}</p>
	<p>비밀번호: ${param.passwd}</p>
		
</body>
</html>