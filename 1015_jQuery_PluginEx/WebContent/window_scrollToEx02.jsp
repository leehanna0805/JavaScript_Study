<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   <!-- 현재 jsp에서 core library 적용시키겠다 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- fmt library -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>윈도우 스크롤의 절대위치로 이동하기</title>
<style>
	#scroll-to-top { 
		width:50px;
		height:50px;
		position:fixed; /*스크롤해도 고정되있음*/
		bottom:3rem;
		right:3rem;
	}
</style>
</head>
<body>
	<h3>오픈 마켓</h3>
	<h2>과일 상품 목록 리스트</h2>
	<div id="apple">
		<div>
			<img src="./images/appleImage.jpg"/>
		</div>
		<div>
			<b><c:out value="청송 꿀사과"/></b> <!-- out:출력하는 태그 -->
		</div>
		<div>
			<b><fmt:formatNumber value="12000000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="고당도 아삭한 사과의 감칠맛"/></small>
		</div>
	</div>
	<div id="grape">
		<div>
			<img src="./images/grapeImage.jpg"/>
		</div>
		<div>
			<b><c:out value="홍성 샤인머스캣 포도"/></b> <!-- out:출력하는 태그 -->
		</div>
		<div>
			<b><fmt:formatNumber value="20000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="껍질 채 먹어요"/></small>
		</div>
	</div>
	<div id="strawberry">
		<div>
			<img src="./images/strawberryImage.jpg"/>
		</div>
		<div>
			<b><c:out value="강진 딸기"/></b> <!-- out:출력하는 태그 -->
		</div>
		<div>
			<b><fmt:formatNumber value="15000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="해외에서도 유명한 달콤한 딸기"/></small>
		</div>
	</div>
	<div id="watermelon">
		<div>
			<img src="./images/watermelon.jpg"/>
		</div>
		<div>
			<b><c:out value="함안 수박"/></b> <!-- out:출력하는 태그 -->
		</div>
		<div>
			<b><fmt:formatNumber value="29500" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="시원하게 즐겨요"/></small>
		</div>
	</div>
	<br><br>
	<input id="scroll-to-top" type="image" src="./images/top_image.png"
		   onclick="javascript:window.scrollTo(0,0)" alt="맨위로 스크롤"/>	<!-- 이미지없을시 alt로 -->
</body>
</html>