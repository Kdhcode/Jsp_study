<%@page import="dto.Book"%>
<%@page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<body>
	<!-- 신규 도서 등록 처리 페이지 만들기 -->
	<%
		// 1. 도서 등록 페이지에서 넘어오는 요청 파라미터 얻기
		String addId = request.getParameter("bookId");
		String addName = request.getParameter("name");
		int addUnitPrice = Integer.parseInt(request.getParameter("unitPrice"));
		String addAuthor = request.getParameter("author");
		String addDescription = request.getParameter("description");
		String addPublisher = request.getParameter("publisher");
		String addCategory= request.getParameter("category");
		long addUnitsInStock = Long.parseLong(request.getParameter("unitsInStock"));
		String addReleaseDate = request.getParameter("releaseDate");
		String addCondition= request.getParameter("condition"); 
		
		// 2. BookRepository 객체 얻기
		BookRepository bookRepository = BookRepository.getInstance();
		
		// 3. Book 객체 생성 후 요청 파라미터 값 담기
		Book addBook = new Book();
		addBook.setBookId(addId);
	  addBook.setName(addName);
	  addBook.setUnitPrice(addUnitPrice);
	  addBook.setAuthor(addAuthor);
	  addBook.setDescription(addDescription);
	  addBook.setPublisher(addPublisher);
	  addBook.setCategory(addCategory);
	  addBook.setUnitsInStock(addUnitsInStock);
	  addBook.setReleaseDate(addReleaseDate);
	  addBook.setCondition(addCondition);
		// 4. addBook() 메소드로 저장 
		bookRepository.addBook(addBook);
		
		// 5. books.jsp 페이지로 강제 이동하도록 작성
		response.sendRedirect("books.jsp");
	
	
	%>
</body>
</html>