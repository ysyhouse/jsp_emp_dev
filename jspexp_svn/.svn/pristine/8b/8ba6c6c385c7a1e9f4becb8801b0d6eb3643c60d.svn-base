package team.a0_yhs.a0424;

import java.sql.*;

public class A01_DBCon_DAO {
// ex)  DB 필드 선언, 드라이버 설정, 공통메서드 호출 출.
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setConn() throws SQLException {
		// 드라이버
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		// 접속
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("접속 성공!!!");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_DBCon_DAO dao = new A01_DBCon_DAO();
		try {
			dao.setConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
