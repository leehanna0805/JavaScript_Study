<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!-- 추가 -->  
<%@ page import="java.util.*" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	//자바 코드 기술
		String[] str={"자바","html","css","JS","React","Node.js"};
		
		Random rnd = new Random();
		int i = rnd.nextInt(6);	//난수 0~5 발생
	%>
	
	<%= str[i] %> 과목을 선택했습니다.
	<%= new java.util.Date() %>
</body>
</html>