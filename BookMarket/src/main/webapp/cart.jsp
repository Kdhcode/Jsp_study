<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page errorPage="exceptionNoBookId.jsp" %>  
<%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" /> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>장바구니</title>
	
	<!-- 부트스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<!-- 장바구니 페이지 -->
	<% 
		String cartId = session.getId(); // 세션 ID 얻기(이 예제에서는 세션 객체의 ID로 사용함)
	%>
	<div class="container py-4">
		<%@ include file="menu.jsp" %>

	 	<jsp:include page="title.jsp">
    	<jsp:param value="장바구니" name="title"/>
    	<jsp:param value="Cart" name="sub"/>
    </jsp:include>

    <div class="row align-items-md-stretch">
    	<div class="row">
    		<table width="100%">
    			<tr>
    				<td align="left">
    					<a href="./deleteCart.jsp?cartId=<%= cartId %>" class="btn btn-danger">삭제하기</a>
    				</td>
    				<td align="right">
    					<a href="./shippingInfo.jsp?cartId=<%= cartId %>" class="btn btn-success">주문하기</a>
    				</td>
    			</tr>
    		</table>
    	</div>
    	
    	<div style="padding-top: 50px">
    		<table class="table table-hover">
    			<tr>
    				<th>도서</th>
    				<th>가격</th>
    				<th>수량</th>
    				<th>소계</th>
    				<th>비고</th>
    			</tr>
    			<%
    				// 세션에 저장된 장바구니 정보 가져오기
    				ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
    				// 예외를 피하기 위해 null이면 빈 ArrayList라도 생성
    				if (cartList == null){
    					cartList = new ArrayList<Book>();
    					session.setAttribute("cartlist", cartList);
    				}
    				// 장바구니에 담긴 도서 리스트 하나씩 출력하기
    				int sum = 0;
    				
    			for (Book item : cartList) {
    				String bookId = item.getBookId();
    				String bookName = item.getName();
    				int bookPrice = item.getUnitPrice();
    				int bookCount = item.getQuantity();
    				int totalPrice = bookPrice * bookCount;
    	      sum += totalPrice;
						
						%>
						<tr>
	    				<td><%= bookId %> - <%= bookName %></td>
	    				<td><%= bookPrice %></td>
	    				<td><%= bookCount %></td>
	    				<td><%= (bookCount * bookPrice) %></td>
	    				<td>
    					<a href="./removeCart.jsp?id=<%= bookId  %>" class="badge text-bg-danger">삭제</a>
    				</td>
    				</tr>
						<%
    			}
    			%>
    			
    			<tr>
    				<td></td>
    				<td></td>
    				<td>총액</td>
    				<td><%= sum %></td>
    				<td></td>
    			</tr>
    		</table>
    		<a href="./books.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
    	</div>
    	
    	
 		</div>

    <%@ include file="footer.jsp" %>
  </div>
</body>
</html>