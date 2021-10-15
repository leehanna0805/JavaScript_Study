/**
 * ID 중복 확인
 * 
 * <input type="text" name="mem_id" placeholder="6자 이상의 영문과 숫자" required autofocus/>
   <input type="button" value="ID중복확인" onclick="idCheck(mem_id.value)"/>
 * 
 */

function idCheck(id){
	if(id==""){	//id가 null
		alert("아이디를 입력해 주세요!!");
	}else{	//id 넘어옴
		// 넘어온 id값을 IdCheck페이지에 넘길때 서버에 get방식으로 넘겨줌
		url = "IdCheck.jsp?mem_id="+id;
		
		// 새로운 창 띄워라. get으로 줘도 되고 post로 줘도 되고~ 개발자 맘
		window.open(url, "get", "width=350, height=150");
	}
}