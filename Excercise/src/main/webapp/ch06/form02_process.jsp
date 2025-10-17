<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		StringBuffer sb = new StringBuffer();
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
	        String name = e.nextElement();
	        String value = request.getParameter(name);

	        sb.append(value);
	    }

		
		out.println(sb.toString());
	%>
</body>
</html>