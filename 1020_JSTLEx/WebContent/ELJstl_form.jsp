<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELJstl_form 페이지</title>
</head>
<body>
	<h3>표현언어의 파라미터값 처리 예제</h3>
	<form name="myForm" method="POST" action="ELJstl_view.jsp">
		이름: <input type="text" name="name"/><br><br>
		과목 선택: <br>
		<input type="checkbox" name="lang" value="HTML"/>HTML<br>
		<input type="checkbox" name="lang" value="CSS"/>CSS<br>
		<input type="checkbox" name="lang" value="JavaScript"/>JavaScript<br>
		<input type="checkbox" name="lang" value="JSP"/>JSP<br>
		<br>
		<input type="submit" value="OK"/>
		<input type="reset" value="Cancel"/>
	</form>
</body>
</html>