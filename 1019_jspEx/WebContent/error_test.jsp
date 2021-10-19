<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 추가 -->
<%@ page errorPage="error_page.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러테스트 jsp</title>
</head>
<body>
	<div align="center">
		<h2>error_test.jsp 페이지</h2>
		<hr> 
		<%= 10/0 /*0으로 나눠서 에러뜨게됨.*/%>	
	</div>
</body>
</html>