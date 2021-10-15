/**
 * 주민번호 체크 자바스크립트 파일
 */

function juminCheck(jumin1, jumin2){
	var juminNum = jumin1 + jumin2;
	
	//자바스크립트의 패턴주는 함수 : RegExp. 테스트는 test()로.
	var jumin_pattern = new RegExp('^[0-9]{6}[1234][0-9]{6}');
	
	if(!jumin_pattern.test(juminNum)){
		alert('주민번호가 정규 표현식 패턴에 적합하지 않습니다.');
	}else{
		alert('주민번호가 정규 표현식 패턴에 적합합니다.');
		
		// 주민번호 체크 공식 적용 9708052082413
		var sum=0;
		var temp=0;
		var result=0;
		var weight = [2,3,4,5,6,7,8,9,2,3,4,5]; //
		
		//1단계 공식
		for(i=0; i<12; i++){
			sum = sum + (juminNum.charAt(i)-'0')*weight[i];
		}
		
		//2단계
		temp = 11-(sum%11);
		
		//3단계
		result = temp%10;
		
		if(result == (juminNum.charAt(12)-'0')){ //-48 뺐음.
			alert("정상적인 주민번호 입니다.");
		}else{
			alert("유효하지 않은 주민번호입니다!");
		}
	
	}
}