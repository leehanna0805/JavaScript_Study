<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%> <!-- 에러jsp페이지 추가 -->

<%@ page import="user.UserDO" %>
<%@ page import="user.UserDAO" %>

<%
	//1. 사용자 입력 정보 추출
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	//2. UserDO 클래스 객체 생성 후 멤버변수에 값 초기화
	UserDO userDO = new UserDO();
	userDO.setId(id);
	userDO.setPassword(password);
	
	//3. UserDAO 클래스 객체 생성 후 getUser(userDO) 호출해서 userDO객체 넘겨주기
	UserDAO userDAO = new UserDAO();
	UserDO user = userDAO.getUser(userDO); //인증처리 거친 user객체 받아오기
	
	if(user != null){ //인증성공
		//세션에 id 저장
		session.setAttribute("IdK", id);
		out.println("<script>alert('로그인 성공');</script>");
	}else{//null값이면 인증 실패
		out.println("<script>alert('로그인 실패');</script>");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 컨트롤러 페이지</title>
</head>
<body>
	
</body>
</html>