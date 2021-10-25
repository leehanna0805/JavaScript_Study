<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 브라우저에 연결된 세션객체를 강제 종료 (세션무효화)
	session.invalidate();

	//2. 세션 종료 후 로그인 페이지로 이동 
	response.sendRedirect("login.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout_proc 로그아웃 처리 페이지</title>
</head>
<body>
	
</body>
</html>