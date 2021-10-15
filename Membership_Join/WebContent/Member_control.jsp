<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- 추가 -->
<% request.setCharacterEncoding("UTF-8"); %>  
<jsp:useBean id="mem" scope="page" class="member.DBBean"></jsp:useBean>

<!-- name엔 useBean의 id를 그대로 주면 됨. 
	* = all = DBBean클래스의 모든 setter메소드를 호출하라는 뜻.(멤버변수 값 초기화 목적)-->
<jsp:setProperty name="mem" property="*"></jsp:setProperty>

<%
	 String action = request.getParameter("action");
	 if(action.equals("insert")){
		 if(mem.insertDB()){
			 response.sendRedirect("Welcome.jsp");
		 	 System.out.println("member 테이블에 데이터 입력 성공!");
		 }else{
			 System.out.println("member 테이블에 데이터 입력 실패!");
		 }
	 }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member_control.jsp => MVC 패턴의 Controller 역할 페이지</title>
</head>
<body>

</body>
</html>