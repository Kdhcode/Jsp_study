<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<!-- getProperty 액션태그에 자바빈 person으로 아이디와 이름을 가져와 출력하기 -->
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
	
	<jsp:setProperty name="person" property="id" value="20251016"/>
	<jsp:setProperty name="person" property="name" value="김재현"/>
	
	<p>아이디: <jsp:getProperty property="id" name="person"/></p>
	<p>이름: <jsp:getProperty property="name" name="person"/></p>
	
	<%-- 
	<p>아이디: <%= person.getId() %></p>
	<p>이름: <%= person.getName() %></p>
	
	<p>아이디: ${person.id}</p>
	<p>이름: ${person.name}</p> --%>
	
</body>
</html>