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
public class A01_EmpDao_my {
	// # 占쎌읈占쎈열(占쎈툡占쎈굡)
	// 1. 占쎈염野껓옙
	private Connection con;
	// 2. 占쏙옙占쎌넅
	private Statement stmt;
	private PreparedStatement pstmt;
	// 3.  占쎌벓占쎈뼗筌ｌ꼶�봺野껉퀗�궢
	private ResultSet rs;
	
	private static final String DRIVER = "com.mysql.jdbc.Driver"; 
	private static final String URL = "jdbc:mysql://localhost:3306/company"; 
	private static final String USER = "root"; 
	private static final String PW = "12345678";

	
	// #占쎈염野껉퀗�궗占쎈꽰筌롫뗄苑뚳옙諭�.
	public void setConn() throws SQLException {
		// 1. 占쎈굡占쎌뵬占쎌뵠甕곌쑬占쏙옙 筌롫뗀�걟�뵳�딅퓠 嚥≪뮆逾ワ옙釉놂옙�뼄.
		try {
			Class.forName(DRIVER);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("占쎈굡占쎌뵬占쎌뵠甕곤옙 �눧紐꾩젫 獄쏆뮇源�:"+e.getMessage());
		}
		// 2. 占쎈뱟占쎌젟 占쎄퐣甕곌쑴肉� 占쎌젔占쎈꺗占쎈릭占쎈뮉 Connection 揶쏆빘猿� 占쎄문占쎄쉐..
		//  	1) 占쎌젔占쎈꺗 占쎌젟癰귨옙 : 占쎈굡占쎌뵬占쎌뵠甕곌쑬梨�:@ip:port:sid
		//         localhost 占쎌겱占쎌삺 pc占쎈퓠 占쎄퐣甕곌쑨占� 占쎄퐬占쎌젟占쎈┷占쎈선 占쎌뿳占쎌뱽 占쎈르..
		// 3. DriverManager�몴占� 占쎈꽰占쎈퉸占쎄퐣 Connection 揶쏆빘猿� 占쎄문占쎄쉐.
		con = DriverManager.getConnection(URL, USER, PW);
		System.out.println("MYSQL연결 성공!!!");
		
	}
	// 鈺곌퀬�돳 筌ｌ꼶�봺
	// 1. 占쎈염野껓옙 疫꿸퀡�뮟筌롫뗄苑뚳옙諭� 占쎌깈�빊占�.
	public ArrayList<Emp> empList(){
		
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		try {
			setConn(); // 占쎈염野껉퀗而쇽㎗占� 占쎄문占쎄쉐..
			String sql = "SELECT * FROM emp";
			// 占쎈염野껉퀗而쇽㎗�떯占� 占쏙옙占쎌넅揶쏆빘猿� 占쎄문占쎄쉐.
			stmt = con.createStatement();
			// 占쏙옙占쎌넅揶쏆빘猿쒐몴占� sql占쎈퓠 占쎌벥占쎈퉸 占쎈뼄占쎈뻬占쎈릭占쎈연 野껉퀗�궢揶쏆빘猿쒐몴占� 占쎄문占쎄쉐.
			rs = stmt.executeQuery(sql);
			while(rs.next()) { 
					// rs.next() 筌띾뜆占쏙쭕�맩肉� 占쎈쑓占쎌뵠占쎄숲揶쏉옙 占쎌뿳占쎌뱽 占쎈르繹먮슣占� 獄쏆꼶�궗 占쎈땾占쎈뻬..占쎈뻬占쎈뼊占쎌맄
				System.out.print(rs.getInt("empno")+"\t");
				System.out.print(rs.getString("ename")+"\t");
				System.out.print(rs.getString("job")+"\t");
				System.out.print(rs.getInt("mgr")+"\t");
				System.out.print(rs.getDate("hiredate")+"\t");
				System.out.print(rs.getDouble("sal")+"\t");
				System.out.print(rs.getDouble("comm")+"\t");
				System.out.print(rs.getInt("deptno")+"\n");
				// emplist占쎈툧占쎈퓠 揶쏉옙 占쎈뼊占쎌맄 揶쏆빘猿쒐몴占� 獄쏆꼶�궗�눧紐꾩뱽 占쎈꽰占쎈퉸占쎄퐣 占쎈막占쎈뼣 筌ｌ꼶�봺..
				emplist.add(new Emp(rs.getInt("empno"), rs.getString("ename"),
									rs.getString("job"), rs.getInt("mgr"),
									rs.getDate("hiredate"), rs.getDouble("sal"),
									rs.getDouble("comm"),rs.getInt("deptno")));
				
				// rs.get占쏙옙占쎌뿯("�뚎됱쓥筌륅옙");
			}
			// 揶쏆빘猿쒎첎占� 筌띾슢諭억옙堉깍쭪占� 獄쏆꼶占� 占쎈떄占쎄퐣嚥∽옙 占쎌쁽占쎌뜚占쎈퉸占쎌젫
			rs.close();
			stmt.close();
			con.close();
			// ex) A02_DeptDao 占쎄깻占쎌삋占쎈뮞占쎈퓠  dlist �몴占� main()占쎈퓠占쎄퐣 占쎈뼄占쎈뻬占쎈뻻,
			//   �겫占쏙옙苑뚩린�뜇�깈 deptno揶쏉옙 �빊�뮆�젾占쎈┷野껓옙 占쎈릭占쎄쉭占쎌뒄
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("sql占쎌굙占쎌뇚:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("疫꿸퀬占� 占쎌굙占쎌뇚:"+e.getMessage());
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
	
	
	
	// 2. 占쏙옙占쎌넅筌ｌ꼶�봺
	// 3. 野껉퀗�궢揶쏉옙 揶쏉옙占쎌죬占쎌궎疫뀐옙..
	// 4. 占쎌쁽占쎌뜚占쎈퉸占쎌젫
	// 5. 占쎌굙占쎌뇚 筌ｌ꼶�봺..
	
	// 占쎈쾻嚥∽옙 筌ｌ꼶�봺
	// 占쎈땾占쎌젟 筌ｌ꼶�봺
	
	// 占쎄텣占쎌젫 筌ｌ꼶�봺.
/*
SELECT *
FROM EMP01 e 
WHERE ename LIKE '%'||'A'||'%'
AND job LIKE '%'||'MAN'||'%'
 * */	
	
	// 鈺곌퀬�돳 筌ｌ꼶�봺
	// 1. 占쎈염野껓옙 疫꿸퀡�뮟筌롫뗄苑뚳옙諭� 占쎌깈�빊占�.- 筌띲끆而삭퉪占쏙옙�땾揶쏉옙 占쎌뿳疫꿸퀣肉� 占쎄퐨占쎈섧占쎌뵠 揶쏉옙占쎈뮟占쎈릭占쎈뼄..
	public ArrayList<Emp> empList(String ename, String job){
		if(ename==null) ename="";
		if(job==null) job="";
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		try {
			setConn(); // 占쎈염野껉퀗而쇽㎗占� 占쎄문占쎄쉐..
			String sql = "SELECT *\r\n"
					+ "FROM EMP01 e \r\n"
					+ "WHERE ename LIKE '%'"+ename+"'%'\r\n"
					+ "AND job LIKE '%"+job+"'%'";
			// 占쎈염野껉퀗而쇽㎗�떯占� 占쏙옙占쎌넅揶쏆빘猿� 占쎄문占쎄쉐.
			stmt = con.createStatement();
			// 占쏙옙占쎌넅揶쏆빘猿쒐몴占� sql占쎈퓠 占쎌벥占쎈퉸 占쎈뼄占쎈뻬占쎈릭占쎈연 野껉퀗�궢揶쏆빘猿쒐몴占� 占쎄문占쎄쉐.
			rs = stmt.executeQuery(sql);
			while(rs.next()) { 
					// rs.next() 筌띾뜆占쏙쭕�맩肉� 占쎈쑓占쎌뵠占쎄숲揶쏉옙 占쎌뿳占쎌뱽 占쎈르繹먮슣占� 獄쏆꼶�궗 占쎈땾占쎈뻬..占쎈뻬占쎈뼊占쎌맄
				System.out.print(rs.getInt("empno")+"\t");
				System.out.print(rs.getString("ename")+"\t");
				System.out.print(rs.getString("job")+"\t");
				System.out.print(rs.getInt("mgr")+"\t");
				System.out.print(rs.getDate("hiredate")+"\t");
				System.out.print(rs.getDouble("sal")+"\t");
				System.out.print(rs.getDouble("comm")+"\t");
				System.out.print(rs.getInt("deptno")+"\n");
				// emplist占쎈툧占쎈퓠 揶쏉옙 占쎈뼊占쎌맄 揶쏆빘猿쒐몴占� 獄쏆꼶�궗�눧紐꾩뱽 占쎈꽰占쎈퉸占쎄퐣 占쎈막占쎈뼣 筌ｌ꼶�봺..
				emplist.add(new Emp(rs.getInt("empno"), rs.getString("ename"),
									rs.getString("job"), rs.getInt("mgr"),
									rs.getDate("hiredate"), rs.getDouble("sal"),
									rs.getDouble("comm"),rs.getInt("deptno") ));
				
				// rs.get占쏙옙占쎌뿯("�뚎됱쓥筌륅옙");
			}
			// 揶쏆빘猿쒎첎占� 筌띾슢諭억옙堉깍쭪占� 獄쏆꼶占� 占쎈떄占쎄퐣嚥∽옙 占쎌쁽占쎌뜚占쎈퉸占쎌젫
			rs.close();
			stmt.close();
			con.close();
			// ex) A02_DeptDao 占쎄깻占쎌삋占쎈뮞占쎈퓠  dlist �몴占� main()占쎈퓠占쎄퐣 占쎈뼄占쎈뻬占쎈뻻,
			//   �겫占쏙옙苑뚩린�뜇�깈 deptno揶쏉옙 �빊�뮆�젾占쎈┷野껓옙 占쎈릭占쎄쉭占쎌뒄
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("sql占쎌굙占쎌뇚:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("疫꿸퀬占� 占쎌굙占쎌뇚:"+e.getMessage());
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
	// 2. 占쏙옙占쎌넅筌ｌ꼶�봺
		// 3. 野껉퀗�궢揶쏉옙 揶쏉옙占쎌죬占쎌궎疫뀐옙..
		// 4. 占쎌쁽占쎌뜚占쎈퉸占쎌젫
		// 5. 占쎌굙占쎌뇚 筌ｌ꼶�봺..
		
		// 占쎈쾻嚥∽옙 筌ｌ꼶�봺
		// 占쎈땾占쎌젟 筌ｌ꼶�봺
		
		// 占쎄텣占쎌젫 筌ｌ꼶�봺.
	/*
	SELECT *
	FROM EMP01 e 
	WHERE ename LIKE '%'||'A'||'%'
	AND job LIKE '%'||'MAN'||'%'
	 * */	
		
		// 鈺곌퀬�돳 筌ｌ꼶�봺
		// 1. 占쎈염野껓옙 疫꿸퀡�뮟筌롫뗄苑뚳옙諭� 占쎌깈�빊占�.- 筌띲끆而삭퉪占쏙옙�땾揶쏉옙 占쎌뿳疫꿸퀣肉� 占쎄퐨占쎈섧占쎌뵠 揶쏉옙占쎈뮟占쎈릭占쎈뼄..
		public ArrayList<Emp> empList(Emp sch){
			if(sch.getEname()==null) sch.setEname("");
			if(sch.getJob()==null) sch.setJob("");
			ArrayList<Emp> emplist = new ArrayList<Emp>();
			try {
				setConn(); // 占쎈염野껉퀗而쇽㎗占� 占쎄문占쎄쉐..
				String sql = "SELECT *\r\n"
						+ "FROM EMP01 e \r\n"
						+ "WHERE ename LIKE '%'||'"+sch.getEname()+"'||'%'\r\n"
						+ "AND job LIKE '%'||'"+sch.getJob()+"'||'%'";
				// 占쎈염野껉퀗而쇽㎗�떯占� 占쏙옙占쎌넅揶쏆빘猿� 占쎄문占쎄쉐.
				stmt = con.createStatement();
				// 占쏙옙占쎌넅揶쏆빘猿쒐몴占� sql占쎈퓠 占쎌벥占쎈퉸 占쎈뼄占쎈뻬占쎈릭占쎈연 野껉퀗�궢揶쏆빘猿쒐몴占� 占쎄문占쎄쉐.
				rs = stmt.executeQuery(sql);
				while(rs.next()) { 
						// rs.next() 筌띾뜆占쏙쭕�맩肉� 占쎈쑓占쎌뵠占쎄숲揶쏉옙 占쎌뿳占쎌뱽 占쎈르繹먮슣占� 獄쏆꼶�궗 占쎈땾占쎈뻬..占쎈뻬占쎈뼊占쎌맄
					System.out.print(rs.getInt("empno")+"\t");
					System.out.print(rs.getString("ename")+"\t");
					System.out.print(rs.getString("job")+"\t");
					System.out.print(rs.getInt("mgr")+"\t");
					System.out.print(rs.getDate("hiredate")+"\t");
					System.out.print(rs.getDouble("sal")+"\t");
					System.out.print(rs.getDouble("comm")+"\t");
					System.out.print(rs.getInt("deptno")+"\n");
					// emplist占쎈툧占쎈퓠 揶쏉옙 占쎈뼊占쎌맄 揶쏆빘猿쒐몴占� 獄쏆꼶�궗�눧紐꾩뱽 占쎈꽰占쎈퉸占쎄퐣 占쎈막占쎈뼣 筌ｌ꼶�봺..
					emplist.add(new Emp(rs.getInt("empno"), rs.getString("ename"),
										rs.getString("job"), rs.getInt("mgr"),
										rs.getDate("hiredate"), rs.getDouble("sal"),
										rs.getDouble("comm"),rs.getInt("deptno") ));
					
					// rs.get占쏙옙占쎌뿯("�뚎됱쓥筌륅옙");
				}
				// 揶쏆빘猿쒎첎占� 筌띾슢諭억옙堉깍쭪占� 獄쏆꼶占� 占쎈떄占쎄퐣嚥∽옙 占쎌쁽占쎌뜚占쎈퉸占쎌젫
				rs.close();
				stmt.close();
				con.close();
				// ex) A02_DeptDao 占쎄깻占쎌삋占쎈뮞占쎈퓠  dlist �몴占� main()占쎈퓠占쎄퐣 占쎈뼄占쎈뻬占쎈뻻,
				//   �겫占쏙옙苑뚩린�뜇�깈 deptno揶쏉옙 �빊�뮆�젾占쎈┷野껓옙 占쎈릭占쎄쉭占쎌뒄
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("sql占쎌굙占쎌뇚:"+e.getMessage());
			}catch(Exception e) {
				System.out.println("疫꿸퀬占� 占쎌굙占쎌뇚:"+e.getMessage());
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
		A01_EmpDao_my dao = new A01_EmpDao_my();
		
		dao.empList("A","A");
		// ex) A02_DeptDao.java 占쎈퓠占쎄퐣 dname�⑨옙 loc�몴占� 占쎈꽰占쎈퉸占쎄퐣 野껓옙占쎄퉳占쎈막 占쎈땾 占쎌뿳占쎈뮉
		//    筌롫뗄苑뚳옙諭띄몴占� �빊遺쏙옙筌ｌ꼶�봺..
	}

}
