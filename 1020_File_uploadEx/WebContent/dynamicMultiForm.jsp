<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dynamic multi form 페이지</title>
<script>
	var count = 1; //전역변수(파일이름용)
	
	function checkSize(input){
		if(input.files && input.files[0].size > (20*1024*1024)){
			alert("파일 사이즈가 20MB를 초과함!!");
			input.value = null;
		}
	}
	
	function addRow(){
		var dynamicTable = document.getElementById("dynamic_table");
		var newRow = dynamicTable.insertRow(); //<tr>하나 추가됨
		var cell1 = newRow.insertCell(); // <td>하나 추가됨
		var cell2 = newRow.insertCell(); // <td>하나 더
		
		cell1.innerHTML = '<input type="checkbox" name="checkboxObj"/>'; //추가된 행에 체크박스추가
		//파일업로드 객체 추가
		cell2.innerHTML = '<input type="file" name="fileupload"'+count+' size="70" onchange="checkSize(this)"/>'; 
		count++;
	}
	function deleteRow(){
		var dynamicTable = document.getElementById("dynamic_table");
		var checkboxArray = document.getElementsByName("checkboxObj");//체크박스 객체
		
		for(var i=checkboxArray.length-1; i>=0; i--){
			var check = checkboxArray[i].checked; //행에 체크되있는지 확인
			
			if(check){
				dynamicTable.deleteRow(i);
			}
		}
	}
</script>
</head>
<body>
	<h2>동적 다중 파일 업로드 구현하기</h2>
	<form name="dynamicForm" method="POST" enctype="multipart/form-data" action="register.jsp">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>제   목</td>
				<td><input type="text" name="subject"/></td>
			</tr>
		</table>
		<input type="button" value="행추가" onclick="addRow();"/>&nbsp;&nbsp;&nbsp;
		<input type="button" value="행삭제" onclick="deleteRow();"/><br><br>
		Check&nbsp;&nbsp;&nbsp;&nbsp;업로드할 파일 이름
		<br>
		<table id="dynamic_table" border="1" cellpadding="0" cellspacing="0"></table>
		<h4><font color="red">업로드할 파일 최대 사이즈: 20MB</font></h4>
		<input type="submit" value="제출"/>
	</form>
</body>
</html>