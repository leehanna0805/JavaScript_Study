<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 폼에서 넘어오는 한글 깨지지 않게 -->
<% request.setCharacterEncoding("UTF-8"); %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductSelect.jsp 페이지</title>
</head>
<body>
	<jsp:useBean id="pro" scope="page" class="Product.ProductTest"/>
	<center>
		<h2>제품 선택</h2>
		<hr>
		<!-- sel: select객체의 name-->
		1. 선택한 제품은 ${param.sel}<br>
		2. 연산문 사용 예: num1 + num2 = ${pro.num1 + pro.num2}<br>
	</center>

</body>
</html>