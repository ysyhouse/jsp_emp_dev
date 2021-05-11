package jspexp.b01_database;
// jspexp.b01_database.A02_DeptDao
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z01_vo.Dept;

public class A02_DeptDao {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("�뱶�씪�씠踰� 臾몄젣 諛쒖깮:"+e.getMessage());
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("�젒�냽 �꽦怨�!!!");
	}
	public ArrayList<Dept> dlist(){
		ArrayList<Dept> deptList = new ArrayList<Dept>();
		// 1. �뿰寃�
		try {
			setConn();
			// 2. ���솕
			
			stmt = con.createStatement();
			// 3. 寃곌낵 媛앹껜(sql)
			String sql = "select * from dept01";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.print(rs.getInt("deptno")+"\t");
				System.out.print(rs.getString("dname")+"\t");
				System.out.print(rs.getString("loc")+"\n");
				// Dept(int deptno, String dname, String loc)
				deptList.add(new Dept(rs.getInt("deptno"), 
						rs.getString("dname"),rs.getString("loc")));
			}
			// 4. �옄�썝�빐�젣
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("SQL�뿉�윭:"+e.getMessage());
			// �옄�썝�빐�젣
		}catch(Exception e) {
			System.out.println("�씪諛섏뿉�윭:"+e.getMessage());
		}finally {
			if(rs!=null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(stmt!=null)
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(con!=null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return deptList;
	}
public ArrayList<Dept> dlist(Dept sch){
		// null�씪�븣�뒗 怨듬갚 泥섎━..
		if(sch.getDeptname()==null) sch.setDeptname("");
		if(sch.getLoc()==null) sch.setLoc("");
		ArrayList<Dept> deptList = new ArrayList<Dept>();
		// 1. �뿰寃�
		try {
			setConn();
			// 2. ���솕			
			stmt = con.createStatement();
			// 3. 寃곌낵 媛앹껜(sql)
			String sql = "SELECT *\r\n"
					+ "FROM DEPT01 d \r\n"
					+ "WHERE dname LIKE '%'||'"+sch.getDeptname()+"'||'%'\r\n"
					+ "AND loc LIKE '%'||'"+sch.getLoc()+"'||'%'";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.print(rs.getInt("deptno")+"\t");
				System.out.print(rs.getString("dname")+"\t");
				System.out.print(rs.getString("loc")+"\n");
				// Dept(int deptno, String dname, String loc)
				deptList.add(new Dept(rs.getInt("deptno"), 
						rs.getString("dname"),rs.getString("loc")));
			}
			// 4. �옄�썝�빐�젣
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("SQL�뿉�윭:"+e.getMessage());
			// �옄�썝�빐�젣
		}catch(Exception e) {
			System.out.println("�씪諛섏뿉�윭:"+e.getMessage());
		}finally {
			if(rs!=null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(stmt!=null)
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(con!=null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return deptList;
	}
	public ArrayList<Dept> dlist(String dname, String loc){
	// null�씪�븣�뒗 怨듬갚 泥섎━..
	if(dname==null) dname="";
	if(loc==null) loc="";
	ArrayList<Dept> deptList = new ArrayList<Dept>();
	// 1. �뿰寃�
	try {
		setConn();
		// 2. ���솕			
		stmt = con.createStatement();
		// 3. 寃곌낵 媛앹껜(sql)
		String sql = "SELECT *\r\n"
				+ "FROM DEPT01 d \r\n"
				+ "WHERE dname LIKE '%'||'"+dname+"'||'%'\r\n"
				+ "AND loc LIKE '%'||'"+loc+"'||'%'";
		rs = stmt.executeQuery(sql);
		while(rs.next()) {
			System.out.print(rs.getInt("deptno")+"\t");
			System.out.print(rs.getString("dname")+"\t");
			System.out.print(rs.getString("loc")+"\n");
			// Dept(int deptno, String dname, String loc)
			deptList.add(new Dept(rs.getInt("deptno"), 
					rs.getString("dname"),rs.getString("loc")));
		}
		// 4. �옄�썝�빐�젣
		rs.close();
		stmt.close();
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("SQL�뿉�윭:"+e.getMessage());
		// �옄�썝�빐�젣
	}catch(Exception e) {
		System.out.println("�씪諛섏뿉�윭:"+e.getMessage());
	}finally {
		if(rs!=null)
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(stmt!=null)
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(con!=null)
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	return deptList;
}
	/*
SELECT *
FROM DEPT01 d 
WHERE dname LIKE '%'||'E'||'%'
AND loc LIKE '%'||'O'||'%'; 
 */	
	public static void main(String []args) {
		A02_DeptDao dao = new A02_DeptDao();
		dao.dlist(new Dept(0,"E","O"));
		
	}
}
