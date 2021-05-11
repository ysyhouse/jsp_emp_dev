package jspexp.b01_database;
// jspexp.b01_database.A01_EmpDao
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z01_vo.Emp;
public class A01_EmpDao {
	// # �쟾�뿭(�븘�뱶)
	// 1. �뿰寃�
	private Connection con;
	// 2. ���솕
	private Statement stmt;
	private PreparedStatement pstmt;
	// 3.  �쓳�떟泥섎━寃곌낵
	private ResultSet rs;
	
	// #�뿰寃곌났�넻硫붿꽌�뱶.
	public void setConn() throws SQLException {
		// 1. �뱶�씪�씠踰꾨�� 硫붾え由ъ뿉 濡쒕뵫�븳�떎.
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("�뱶�씪�씠踰� 臾몄젣 諛쒖깮:"+e.getMessage());
		}
		// 2. �듅�젙 �꽌踰꾩뿉 �젒�냽�븯�뒗 Connection 媛앹껜 �깮�꽦..
		//  	1) �젒�냽 �젙蹂� : �뱶�씪�씠踰꾨챸:@ip:port:sid
		//         localhost �쁽�옱 pc�뿉 �꽌踰꾧� �꽕�젙�릺�뼱 �엳�쓣 �븣..
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		// 3. DriverManager瑜� �넻�빐�꽌 Connection 媛앹껜 �깮�꽦.
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("�젒�냽 �꽦怨�!!!");
		
	}
	// 議고쉶 泥섎━
	// 1. �뿰寃� 湲곕뒫硫붿꽌�뱶 �샇異�.
	public ArrayList<Emp> empList(){
		
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		try {
			setConn(); // �뿰寃곌컼泥� �깮�꽦..
			String sql = "SELECT * FROM emp01";
			// �뿰寃곌컼泥닿� ���솕媛앹껜 �깮�꽦.
			stmt = con.createStatement();
			// ���솕媛앹껜瑜� sql�뿉 �쓽�빐 �떎�뻾�븯�뿬 寃곌낵媛앹껜瑜� �깮�꽦.
			rs = stmt.executeQuery(sql);
			while(rs.next()) { 
					// rs.next() 留덉�留됱뿉 �뜲�씠�꽣媛� �엳�쓣 �븣源뚯� 諛섎났 �닔�뻾..�뻾�떒�쐞
				System.out.print(rs.getInt("empno")+"\t");
				System.out.print(rs.getString("ename")+"\t");
				System.out.print(rs.getString("job")+"\t");
				System.out.print(rs.getInt("mgr")+"\t");
				System.out.print(rs.getDate("hiredate")+"\t");
				System.out.print(rs.getDouble("sal")+"\t");
				System.out.print(rs.getDouble("comm")+"\t");
				System.out.print(rs.getInt("deptno")+"\n");
				// emplist�븞�뿉 媛� �떒�쐞 媛앹껜瑜� 諛섎났臾몄쓣 �넻�빐�꽌 �븷�떦 泥섎━..
				emplist.add(new Emp(rs.getInt("empno"), rs.getString("ename"),
									rs.getString("job"), rs.getInt("mgr"),
									rs.getDate("hiredate"), rs.getDouble("sal"),
									rs.getDouble("comm"),rs.getInt("deptno")));
				
				// rs.get���엯("而щ읆紐�");
			}
			// 媛앹껜媛� 留뚮뱾�뼱吏� 諛섎� �닚�꽌濡� �옄�썝�빐�젣
			rs.close();
			stmt.close();
			con.close();
			// ex) A02_DeptDao �겢�옒�뒪�뿉  dlist 瑜� main()�뿉�꽌 �떎�뻾�떆,
			//   遺��꽌踰덊샇 deptno媛� 異쒕젰�릺寃� �븯�꽭�슂
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("sql�삁�쇅:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("湲고� �삁�쇅:"+e.getMessage());
		}finally {
			if(rs!=null) { 
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
			if(stmt!=null) { 
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
			if(con!=null) { 
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
		}
		
		
		
		return emplist;
	}
	
	
	
	// 2. ���솕泥섎━
	// 3. 寃곌낵媛� 媛��졇�삤湲�..
	// 4. �옄�썝�빐�젣
	// 5. �삁�쇅 泥섎━..
	
	// �벑濡� 泥섎━
	// �닔�젙 泥섎━
	
	// �궘�젣 泥섎━.
/*
SELECT *
FROM EMP01 e 
WHERE ename LIKE '%'||'A'||'%'
AND job LIKE '%'||'MAN'||'%'
 * */	
	
	// 議고쉶 泥섎━
	// 1. �뿰寃� 湲곕뒫硫붿꽌�뱶 �샇異�.- 留ㅺ컻蹂��닔媛� �엳湲곗뿉 �꽑�뼵�씠 媛��뒫�븯�떎..
	public ArrayList<Emp> empList(String ename, String job){
		if(ename==null) ename="";
		if(job==null) job="";
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		try {
			setConn(); // �뿰寃곌컼泥� �깮�꽦..
			String sql = "SELECT *\r\n"
					+ "FROM EMP01 e \r\n"
					+ "WHERE ename LIKE '%'||'"+ename+"'||'%'\r\n"
					+ "AND job LIKE '%'||'"+job+"'||'%'";
			// �뿰寃곌컼泥닿� ���솕媛앹껜 �깮�꽦.
			stmt = con.createStatement();
			// ���솕媛앹껜瑜� sql�뿉 �쓽�빐 �떎�뻾�븯�뿬 寃곌낵媛앹껜瑜� �깮�꽦.
			rs = stmt.executeQuery(sql);
			while(rs.next()) { 
					// rs.next() 留덉�留됱뿉 �뜲�씠�꽣媛� �엳�쓣 �븣源뚯� 諛섎났 �닔�뻾..�뻾�떒�쐞
				System.out.print(rs.getInt("empno")+"\t");
				System.out.print(rs.getString("ename")+"\t");
				System.out.print(rs.getString("job")+"\t");
				System.out.print(rs.getInt("mgr")+"\t");
				System.out.print(rs.getDate("hiredate")+"\t");
				System.out.print(rs.getDouble("sal")+"\t");
				System.out.print(rs.getDouble("comm")+"\t");
				System.out.print(rs.getInt("deptno")+"\n");
				// emplist�븞�뿉 媛� �떒�쐞 媛앹껜瑜� 諛섎났臾몄쓣 �넻�빐�꽌 �븷�떦 泥섎━..
				emplist.add(new Emp(rs.getInt("empno"), rs.getString("ename"),
									rs.getString("job"), rs.getInt("mgr"),
									rs.getDate("hiredate"), rs.getDouble("sal"),
									rs.getDouble("comm"),rs.getInt("deptno") ));
				
				// rs.get���엯("而щ읆紐�");
			}
			// 媛앹껜媛� 留뚮뱾�뼱吏� 諛섎� �닚�꽌濡� �옄�썝�빐�젣
			rs.close();
			stmt.close();
			con.close();
			// ex) A02_DeptDao �겢�옒�뒪�뿉  dlist 瑜� main()�뿉�꽌 �떎�뻾�떆,
			//   遺��꽌踰덊샇 deptno媛� 異쒕젰�릺寃� �븯�꽭�슂
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("sql�삁�쇅:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("湲고� �삁�쇅:"+e.getMessage());
		}finally {
			if(rs!=null) { 
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
			if(stmt!=null) { 
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
			if(con!=null) { 
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
		}
		
		
		
		return emplist;
	}
	// 2. ���솕泥섎━
		// 3. 寃곌낵媛� 媛��졇�삤湲�..
		// 4. �옄�썝�빐�젣
		// 5. �삁�쇅 泥섎━..
		
		// �벑濡� 泥섎━
		// �닔�젙 泥섎━
		
		// �궘�젣 泥섎━.
	/*
	SELECT *
	FROM EMP01 e 
	WHERE ename LIKE '%'||'A'||'%'
	AND job LIKE '%'||'MAN'||'%'
	 * */	
		
		// 議고쉶 泥섎━
		// 1. �뿰寃� 湲곕뒫硫붿꽌�뱶 �샇異�.- 留ㅺ컻蹂��닔媛� �엳湲곗뿉 �꽑�뼵�씠 媛��뒫�븯�떎..
		public ArrayList<Emp> empList(Emp sch){
			if(sch.getEname()==null) sch.setEname("");
			if(sch.getJob()==null) sch.setJob("");
			ArrayList<Emp> emplist = new ArrayList<Emp>();
			try {
				setConn(); // �뿰寃곌컼泥� �깮�꽦..
				String sql = "SELECT *\r\n"
						+ "FROM EMP01 e \r\n"
						+ "WHERE ename LIKE '%'||'"+sch.getEname()+"'||'%'\r\n"
						+ "AND job LIKE '%'||'"+sch.getJob()+"'||'%'";
				// �뿰寃곌컼泥닿� ���솕媛앹껜 �깮�꽦.
				stmt = con.createStatement();
				// ���솕媛앹껜瑜� sql�뿉 �쓽�빐 �떎�뻾�븯�뿬 寃곌낵媛앹껜瑜� �깮�꽦.
				rs = stmt.executeQuery(sql);
				while(rs.next()) { 
						// rs.next() 留덉�留됱뿉 �뜲�씠�꽣媛� �엳�쓣 �븣源뚯� 諛섎났 �닔�뻾..�뻾�떒�쐞
					System.out.print(rs.getInt("empno")+"\t");
					System.out.print(rs.getString("ename")+"\t");
					System.out.print(rs.getString("job")+"\t");
					System.out.print(rs.getInt("mgr")+"\t");
					System.out.print(rs.getDate("hiredate")+"\t");
					System.out.print(rs.getDouble("sal")+"\t");
					System.out.print(rs.getDouble("comm")+"\t");
					System.out.print(rs.getInt("deptno")+"\n");
					// emplist�븞�뿉 媛� �떒�쐞 媛앹껜瑜� 諛섎났臾몄쓣 �넻�빐�꽌 �븷�떦 泥섎━..
					emplist.add(new Emp(rs.getInt("empno"), rs.getString("ename"),
										rs.getString("job"), rs.getInt("mgr"),
										rs.getDate("hiredate"), rs.getDouble("sal"),
										rs.getDouble("comm"),rs.getInt("deptno") ));
					
					// rs.get���엯("而щ읆紐�");
				}
				// 媛앹껜媛� 留뚮뱾�뼱吏� 諛섎� �닚�꽌濡� �옄�썝�빐�젣
				rs.close();
				stmt.close();
				con.close();
				// ex) A02_DeptDao �겢�옒�뒪�뿉  dlist 瑜� main()�뿉�꽌 �떎�뻾�떆,
				//   遺��꽌踰덊샇 deptno媛� 異쒕젰�릺寃� �븯�꽭�슂
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("sql�삁�쇅:"+e.getMessage());
			}catch(Exception e) {
				System.out.println("湲고� �삁�쇅:"+e.getMessage());
			}finally {
				if(rs!=null) { 
					try {
						rs.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
				}
				if(stmt!=null) { 
					try {
						stmt.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
				}
				if(con!=null) { 
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
				}
			}
			
			
			
			return emplist;
		}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_EmpDao dao = new A01_EmpDao();
		
		dao.empList("A","A");
		// ex) A02_DeptDao.java �뿉�꽌 dname怨� loc瑜� �넻�빐�꽌 寃��깋�븷 �닔 �엳�뒗
		//    硫붿꽌�뱶瑜� 異붽�泥섎━..
	}

}
