<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 추가 -->
<%@ page
	import="com.oreilly.servlet.MultipartRequest,
            	com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
            	java.util.*,
            	java.io.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String savePath = "C:/FileUpload/filestorage"; //업로드한 파일 어디에 저장할껀지
	String encType = "UTF-8";
	int maxSize = 20 * 1024 * 1024; //파일 최대사이즈(20MB)

	//반드시 예외처리 필요
	try {
		//MultipartRequest 클래스는 파일업로드를 직접적으로 담당
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, savePath, maxSize, encType, new DefaultFileRenamePolicy());
		//DefaultFileRenamePolicy: 덮어쓰기를 방지하는 클래스

		//request객체가 아닌 MultipartRequest 객체를 통해 얻어온다.							
		String name = multi.getParameter("name");
		String subject = multi.getParameter("subject");

		out.println("작성자: " + name + "<br>");
		out.println("제   목: " + subject + "<br>");
		out.println("<br>");

		//업로드한 파일 뿌려주기
		Enumeration files = multi.getFileNames();
		while (files.hasMoreElements()) {
			String file = (String)files.nextElement(); //파일 업로드 객체 이름
			String filename = multi.getFilesystemName(file); //저장된 파일 이름
			out.println("저장된 파일 이름: " + filename + "<br>");
		}

	} catch (Exception e) {
		System.out.println(e);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register 페이지</title>
</head>
<body>

</body>
</html>