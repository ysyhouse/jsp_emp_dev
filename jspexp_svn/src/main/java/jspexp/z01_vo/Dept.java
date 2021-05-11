package jspexp.z01_vo;
// jspexp.z01_vo.Dept
public class Dept {
	
	private int deptno;
	private String deptname;
	private String loc;
	public Dept() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Dept(int deptno, String dname, String loc) {

		super();
		this.deptno = deptno;
		this.deptname = deptname;
		this.loc = loc;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	

}
