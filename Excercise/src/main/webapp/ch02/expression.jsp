<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Example</title>
</head>
<body>
<%
    Calendar cal = Calendar.getInstance(); // 객체 생성
%>
현재 시간은: <%= cal.getTime() %>
</body>
</html>
