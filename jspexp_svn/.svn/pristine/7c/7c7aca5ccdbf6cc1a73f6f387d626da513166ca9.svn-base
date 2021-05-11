package team.a0_sjs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class A01_DBCon_DAO {
	
	//ex) db필드 선언, 드라이버 설정, 공통 메서드 호출 
	//전역변수
	//1.연결
	private Connection con;
	//2.대화
	private Statement stmt;
	private PreparedStatement pstmt;
	//3.응답
	private ResultSet rs;
	
	
	public void setConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("드라이버문제바생"+e.getMessage());
		}
		
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		System.out.println("접속성공!!!!!!");
	}
	//조회처리
	//1.연결기능메서드 호출
//	2.대화처리
//	3.결과값 가져오기
//	4.자원해제
//	5.예외처리
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		A01_DBCon_DAO dao = new A01_DBCon_DAO();
		dao.setConn();

	}

}
