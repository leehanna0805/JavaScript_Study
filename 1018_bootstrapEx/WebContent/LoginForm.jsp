<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>

<style>
	.title { text-align:center; }
	table { margin-left:auto;margin-right:auto; }
	tbody.tbody>tr { display:table; width:500px; }
	tbody.tbody>tr>td:nth-child(1) { width:20%; vertical-align:middle; 
									display:table-cell; text-align:center; }
</style>

</head>
<body>
	<form name="loginForm" method="POST">
		<h1 class="title">로그인</h1>
		<div class="container">
			<table>
			<tbody class="tbody">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" size="50" required autofocus/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="passwd" size="50" maxlength="12" minlength="8" required/></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<br>
						<input type="submit" value="로그인"/>
					</td>
				</tr>
			</tbody>
			</table>
		</div>
	</form>
</body>
</html>