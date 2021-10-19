<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<%@ page isErrorPage="true" %> <!-- default는 false -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지 jsp</title>
</head>
<!-- 추가 -->
<jsp:useBean id="now" class="java.util.Date"/>

<body>
	<div>
		<h2>ERROR PAGE</h2>
		<hr>
		<table>
			<tr width=100% bgcolor="orange">
				<td>
					개발자에게 문의해 주세요.<br>빠른 시일내로 해결할지도
				</td>
			</tr>
			<tr>
				<td>
					${now}<p>
					요청실패 URI : ${pageContext.errorData.requestURI}<br>
					상태코드 : ${pageContext.errorData.statusCode}<br>
					예외유형 : ${pageContext.errorData.throwable}
				</td>
			</tr>
		</table>
	</div>	
</body>
</html>