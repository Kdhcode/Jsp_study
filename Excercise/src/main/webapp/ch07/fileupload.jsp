<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/fileuploadProcess" method="post" enctype="multipart/form-data">
		이름 : <input type="text" name="name">
		제목 : <input type="text" name="subject">
		파일 : <input type="file" name="fileupload" multiple="multiple">
		<button type="submit">전송</button>
	</form>	
</body>
</html>