<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!-- 자바클래스 임포트 -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>

<%
	//이거 setAttribute는 getBoardList.jsp에서 get방식으로 url줄떄 수행됨.
	// a href="getBoard.jsp?seq=${board.seq}"
	String seq = request.getParameter("seq");
	
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq)); //string->int 형변환
	
	BoardDAO boardDAO = new BoardDAO();
	BoardDO board = boardDAO.getBoard(boardDO);
	
	request.setAttribute("board", board); //board request에 등록해놓기
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getBoard 게시글 상세보기 페이지</title>
<style>
	#div_box{
		position:absolute;
		top:10%;
		left:40%;
	}
</style>
</head>
<body>
	<div id="div_box">
		<h1>게시글 상세보기</h1>
		<a href="logout_proc.jsp">로그아웃</a>
		<hr>
		<form name="getBoardForm" method="POST" action="updateBoard_proc.jsp">
			<input type="hidden" name="seq" value="${board.seq}"/> <!-- 글번호도 숨겨서 같이 넘기겠다 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="title" type="text" value="${board.title}"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${board.writer}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="content" rows="10" cols="40">${board.content}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${board.regDate}</td>
				</tr>
				<tr>
					<td bgcolor="orange">조회수</td>
					<td align="left">${board.cnt}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정"/>
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBoard.jsp">새 게시글 등록</a>
		<a href="deleteBoard_proc.jsp?seq=${board.seq}">게시글 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.jsp">전체 게시글 목록 보기</a>
	</div>
</body>
</html>