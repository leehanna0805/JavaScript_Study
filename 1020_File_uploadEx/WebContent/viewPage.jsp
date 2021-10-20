<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- cos.jar 안의 MultipartRequest 클래스  등 필요한 클래스 import하기 -->
<%@ page import="com.oreilly.servlet.MultipartRequest,
				 com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
				 java.util.*,
				 java.io.*" 
%>
<%	
	String savePath = "C:/FileUpload/filestorage"; //업로드한 파일 어디에 저장할껀지
	String encType = "UTF-8";
	int maxSize = 20*1024*1024; //파일 최대사이즈(20MB)
	
	//반드시 예외처리 필요
	try{
		//MultipartRequest 클래스는 파일업로드를 직접적으로 담당
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, 
									 savePath, 
									 maxSize, 
									 encType, 
									 new DefaultFileRenamePolicy());
									//DefaultFileRenamePolicy: 덮어쓰기를 방지하는 클래스
		
		//request객체가 아닌 MultipartRequest 객체를 통해 얻어온다.							
		String name = multi.getParameter("name");
		String subject = multi.getParameter("subject");
		
		out.println("작성자: " + name + "<br>");
		out.println("제   목: " + subject + "<br>");
		out.println("<br>");
		
		//업로드한 파일 뿌려주기
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){
			String fname = (String)files.nextElement();			//파일 업로드 객체 이름
			String original = multi.getOriginalFileName(fname);	//실제 파일 이름
			String filename = multi.getFilesystemName(fname);	//저장된 파일 이름
			String type = multi.getContentType(fname);			//파일 타입
			File f = multi.getFile(fname);						
			
			out.println("파일 업로드 객체 이름: " + fname + "<br>");
			out.println("실제 파일 이름: " + original + "<br>");
			out.println("저장된 파일 이름: " + filename + "<br>");
			out.println("파일 타입: " + type + "<br>");
			
			if(f != null){
				out.println("파일 크기: "+f.length());
				out.println("<br>");
			}	
		}
		
	}catch(Exception e){
		System.out.println(e);
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewPage jsp</title>
</head>
<body>

</body>
</html>