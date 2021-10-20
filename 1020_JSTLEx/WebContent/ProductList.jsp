<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL(core라이브러리) 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList.jsp 페이지</title>
</head>
<body>
	<h2>제품 목록 보기</h2>
	<hr>
	<form name="myForm" method="POST" action="ProductSelect.jsp">
		<jsp:useBean id="pro" scope="page" class="Product.ProductTest"/> <!--사용할 class의 패키지명.클래스명-->
	
	<%-- 이 주석은 브라우저에서 소스보기해도 보이지 않는다!
		<select name="sel"> 
			<%	
				// 방법1. 자바 코드로 사용하기
				for(String item : pro.getProductList()){ //useBean에서 설정한 id로 클래스에 접근
					out.println("<option>"+item+"</option>");
				}
			%>			
		</select>
	--%>
	
		<select name="sel">
			<!-- 방법2. JSTL + 표현언어(EL) 를 이용하기-->
			<c:forEach var="item" items="${pro.getProductList()}">
				<option>${item}</option>
			</c:forEach>
		</select>
		
		
		
		<input type="submit" value="제품 선택"/>
	</form>
</body>
</html>