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
		String userId = (String)session.getAttribute("userID");
		if(userId == null) {
			response.sendRedirect("session_out.jsp");
		}
	%>
	
	<a ></a>
</body>
</html>