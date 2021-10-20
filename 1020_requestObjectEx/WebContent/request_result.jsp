<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_result.jsp 페이지</title>
</head>
<body>
	<h2>request 테스트 결과 - 1</h2>
		<hr>
		<table border="1" cellspacing="1" cellpadding="5">
			<tr>
				<td bgcolor="lime">이름</td>
				<td width="80"><%= request.getParameter("username") %></td> <!-- 인풋타입의 name으로 받아오기 -->
			</tr>
			<tr>
				<td bgcolor="lime">직업</td>
				<td width="80"><%= request.getParameter("job") %></td> 
			</tr>
			<tr>
				<td bgcolor="lime">관심분야</td>
				<td>
					<%	
						//배열 선언 후 getParameterValues로 받아오기
						String[] favorites = request.getParameterValues("favorite");
						
						for(int i=0;i<favorites.length;i++){
							out.print(favorites[i]+"<br>");	//out 내장객체
						}
					%>
				</td>
			</tr>
		</table>
		<hr>
		<h2>request 테스트 결과 - 2</h2>
		<table border="0">
			<tr>
				<td>
				1. 클라이언트 IP 주소: <%= request.getRemoteAddr() %><br> <!-- 0:0:0:0:0:0:0:1. ipv6버전-->
				2. 요청 메소드: <%= request.getMethod() %><br> <!-- POST -->
				3. 요청 프로토콜: <%= request.getProtocol() %>  <!-- HTTP/1.1 -->
				</td>
			</tr>
		</table>
</body>
</html>