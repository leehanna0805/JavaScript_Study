<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<%	//인증된 세션이 없는 경우 해당 페이지를 볼 수 없게 한다.
	if(session.getAttribute("signedUser") == null){ //등록된거 없으면
		response.sendRedirect("logout.jsp"); //logout.jsp 로 보내라
	}
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= session.getAttribute("signedUser") %>님 환영합니다.</h1>
	<a href="logout.jsp">로그아웃</a>  <!-- 로그아웃누르면 logout.jsp이동 -->
</body>
</html>