package team.a6_ysy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class A01_EmpConDao {
	
	//
	Connection conn;
	
	Statement stmt;
	PreparedStatement pstmt;
	
	ResultSet rs;
	
	
	public void setConn() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//String info="";
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		try {
			conn=DriverManager.getConnection(info,"scott","tiger");
			
			System.out.println("접속 성공!!!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		A01_EmpConDao dao= new A01_EmpConDao();
		
		
		
		try{
			dao.setConn();
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}

	}

}
