<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<%  //스크립트릿 안에는 자바 코드
	//인증 가능 사용자 및 패스워드 목록 생성
	String[] users = {"park1234","kim1677","hong777"};
	String[] passwords = {"p456","k7788","h1234"};
	
	String id = request.getParameter("id");  //input 객체의 name
	String pw = request.getParameter("pw");

	//인증 처리
	int i;
	for(i=0;i<users.length;i++){
		if(users[i].equals(id) && passwords[i].equals(pw)){
			//세션 등록 (세션,리스폰스는 내장 객체)
			session.setAttribute("signedUser", id); //id 등록
			response.sendRedirect("welcome.jsp");	//welcome.jsp로 이동
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증페이지</title>
</head>
<body>

</body>
</html>