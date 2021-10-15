/**
 * 이메일 도메인 '직접입력' 처리 js파일

 * MemberForm.jsp의 직접입력 부분 코드 *
 <input type="text" name="mem_email_domain" id="email_add"/>
 <select name="email_sel" id="email_sel" style="font-size:16px; height:30px;" onchange="change_email();">
		<option value="">직접입력</option>
*/

function change_email(){
	var email_add = document.getElementById("email_add");	//input text 객체 (도메인)
	var email_sel = document.getElementById("email_sel");	//selection 객체
	
	//사용자가 선택한 옵션의 순서와 값 구하기
	var idx = email_sel.options.selectedIndex;	//selected index = 사용자가 선택한 셀의 인덱스. (ex naver.com선택하면 1번째)
	var val = email_sel.options[idx].value;		//사용자가 선택한 인덱스의 값을  val 에 할당
	
	email_add.value = val;						//도메인 값으로 val 할당해라.
	
	
}