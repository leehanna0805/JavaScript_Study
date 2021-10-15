<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<!-- 추가 -->
<% request.setCharacterEncoding("UTF-8"); %>

<!-- DBBean(자바 클래스)와 jsp(자바 서버페이지) 상호작용 . scope:어느 범위에서 사용할것이냐(현재페이지). class: 패키지명부터 포함해야함! -->

<jsp:useBean id="mem" scope="page" class="member.DBBean"></jsp:useBean>
<%
   String mem_id = request.getParameter("mem_id");
   int idCheck = mem.confirmId(mem_id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck.jsp 파일</title>
</head>
<body>
   <table border="0" align="center">
      <tr>
         <td align="center">
         <%
            if(idCheck==1){ //ID가 중복된 경우
         %>
         <br>
         <%=mem_id %> 는 이미 존재하는 ID입니다.&nbsp;<br><br>
         <input type="button" value="닫기" onclick="javascript:self.close();
               opener.document.myForm.mem_id.focus();" />
         <% }else { //ID가 사용가능한 경우 %>
         <br>
         <%=mem_id %> 는 사용가능한 ID입니다.&nbsp;<br><br>
         <input type="button" value="닫기" onclick="javascript:self.close();
               opener.document.myForm.mem_passwd.focus();" />
         <% } %>
         </td>
      </tr>
   </table>
</body>
</html>






