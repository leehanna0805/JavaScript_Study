<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- JSTL(core라이브러리) 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELJstl_view 페이지</title>
</head>
<body>
	
	<%-- 
		[문제] 1. 스크립트릿<% %>과 표현식<%= %>, request 내장객체, out 내장객체 적용하여 코딩.
				Form에서 넘어온 이름, 선택과목들을 브라우저에 출력. 
	--%>
	방법 1<br>
	이름: <%= request.getParameter("name") %><br><br>
	선택 과목: <br>
		<% 
			String lang[] = request.getParameterValues("lang");
			for(int i=0;i<lang.length;i++){
				out.print(lang[i]+"<br>");
			}
		%>
	<hr><br>
	<%-- 
		[문제] 2. 표현언어(EL)와 JSTL을 적용하여 코딩.  
	--%>
	방법 2<br>
	이름: ${param.name}<br><br>
	선택과목: <br>
	<c:forEach var="item" items="${paramValues.lang}">
  		${item}<br>
	</c:forEach>
	
</body>
</html>