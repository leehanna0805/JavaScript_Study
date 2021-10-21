package mybatis.dao;
/*
 *  Mybatis 사용 목적 중 하나는 DAO로부터 SQL문을 분리하는 것이다.
 *  분리된 SQL문은 SQLmapper 파일(empMapper.xml)에 작성하며
 *  DAO에선 SqlSession 객체가 SQL mapper 파일을 참조한다.  
 */

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import mybatis.service.FactoryService;
import mybatis.vo.EmpVO;

public class EmpDAO {
	public static List<EmpVO> getTotal() { //사원번호, 사원명, 직책 가진 class
		/*
		 * 이미 생성된 factory를 이용하여 SqlSession 객체를 얻어낸다.
		 * select 작업은 auto commit을 하지 않아도 되서
		 * openSession() 호출 시 true를 인자값으로 안줘도 된다. 
		 */
		SqlSession ss = FactoryService.getFactory().openSession();
		
		//sql session의 여러개를 select할땐 selectList(). 하나일땐 selectOne()
		List<EmpVO> list = ss.selectList("emp.total"); //분리된 sql문 부르기
		
		ss.close();
		return list;
	}
}
