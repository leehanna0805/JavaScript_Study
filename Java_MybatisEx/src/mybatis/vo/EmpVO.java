package mybatis.vo;

public class EmpVO {
	//멤버변수
	private int empno;		//사원번호
	private String ename;	//사원명
	private String position;//직책
	public int getEmpno() {
		return empno;
	}
	// Getter, Setter
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	
}
