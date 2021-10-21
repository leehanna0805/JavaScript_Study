package mybatis.dao;
/*
 *  Mybatis 사용 목적 중 하나는 DAO로부터 SQL문을 분리하는 것이다.
 *  분리된 SQL문은 SQLmapper 파일(empMapper.xml)에 작성하며
 *  DAO에선 SqlSession 객체가 SQL mapper 파일을 참조한다.  
 */

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import mybatis.service.FactoryService;
import mybatis.vo.EmpVO;

public class EmpDAO {
	public static List<EmpVO> getTotal() { //사원번호, 사원명, 직책 가진 class
		/*
		 * 이미 생성된 factory를 이용하여 SqlSession 객체를 얻어낸다.
		 * select 작업은 auto commit을 하지 않아도 되서(테이블에 변화없으니)
		 * openSession() 호출 시 true를 인자값으로 안줘도 된다. 
		 */
		SqlSession ss = FactoryService.getFactory().openSession();
		
		//sql session의 여러개를 select할땐 selectList(). 하나일땐 selectOne()
		List<EmpVO> list = ss.selectList("emp.total"); //분리된 sql문 부르기(select문)
		
		ss.close();
		return list;
	}
	
	public static int add(String empno, String ename, String position) {
		
		/* mapper를 호출할 때 Map자료구조로 전달해야 하므로 Map 계열의 객체 생성 */
		Map<String, String> map = new Hashtable<String, String>();
		
		//넘겨받은 값을 해시테이블에 객체 저장(키,값) 쌍으로
		map.put("empno", empno);
		map.put("ename", ename);
		map.put("position", position);
		
		//insert작업은 테이블에 변화를 주기 때문에 auto commit이 필요! true를 써줘야함.
		// DML(insert, update, delete)실행시 꼭 true를 인자값으로 주자.
		SqlSession ss = FactoryService.getFactory().openSession(true);
		
		int cnt = ss.insert("emp.add",map);//분리된 sql문 부르기(add문)
		ss.close();
		return cnt;
	}
}
