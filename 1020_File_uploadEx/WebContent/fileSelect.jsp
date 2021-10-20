<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileSelect jsp페이지</title>
<script>
	function fileCheckSize(input){
		if(input.files && input.files[0].size > (20*1024*1024)){
			alert("파일 사이즈가 20MB를 초과함!!");
			input.value = null;
		}
	}
</script>
</head>
<body>
	<!-- 파일업로드 위해선 enctype 속성 추가시켜야함. -->
	<form name="fileUploadForm" method="POST" enctype="multipart/form-data" action="viewPage.jsp">
		작성자<br>
		<input type="text" name="name"/><br><br>
		제목<br>
		<input type="text" name="subject"/><br><br>
		
		<h4><font color="red">*업로드 파일은 최대 20MB 까지 업로드 가능합니다!</font></h4>
		
		업로드 할 파일<br>
		<!-- 파일업로드 객체 file. fileCheckSize()로 최대사이즈 안넘는지 체크 -->
		<input type="file" name="uploadFile" onchange="fileCheckSize(this)"/>
		<input type="submit" value="파일 올리기"/>
	</form>
</body>
</html>