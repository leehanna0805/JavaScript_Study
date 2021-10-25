<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>

<%
	request.setCharacterEncoding("UTF-8");
	String seq = request.getParameter("seq"); //히든객체로 넘어온 글번호
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));
	boardDO.setTitle(title);
	boardDO.setContent(content);
	
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.updateBoard(boardDO);
	
	response.sendRedirect("getBoardList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateBoard_proc 수정 컨트롤러 페이지</title>
</head>
<body>

</body>
</html>