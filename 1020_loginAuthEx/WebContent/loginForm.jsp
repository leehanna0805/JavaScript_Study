<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼 페이지</title>
</head>
<body>
	<!-- submit객체 클릭하면 인증페이지로 값 데리고 이동해라 -->
	<form name="loginForm" method="POST" action="authentication.jsp">
		<label for="id">아이디</label>
		<input type="text" name="id"/>
		<br>
		<label for="pw">비밀번호</label>
		<input type="password" name="pw"/>
		<br><br>
		<input type="submit" value="로그인"/>	
	</form>
</body>
</html>