package team.a7_ghp.a0424;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import b01_database.A01_EmpDao;

public class A01_DBCon_DAO {

	// ex) 필드 선언, 드라이버 설정 공통메서드 호출 줄.

	private Connection con;
	//2. 대화
	private Statement stmt;
	private PreparedStatement pstmt;
	//3. 응답처리결과
	private ResultSet rs;
	
	// #연결공통메서드
	public void setConn() throws SQLException {
		// 1. 드라이버를 메모리에 로딩한다.
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("드라이버 문제 발생 :"+e.getMessage());
		}
		// 2. 특정 서버에 접속하는 Connection 객체 생성..
		//		1) 접속 정보 : 드라이버명:@ip:port:sid
		//		localhost 현재 pc에 서버가 설정되어 있을 때..
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		// 3. DriverManager를 통해서 Connection 객체 생성.
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("접속 성송!!");
		
	}
	// 조회 처리
	// 1. 연결 기능메서드 호출
	
	public static void main(String[] args) {
		A01_EmpDao dao = new A01_EmpDao();
		
		try {
			dao.setConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
