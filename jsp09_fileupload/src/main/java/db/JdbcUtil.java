package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
	public static Connection getCon() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			con=DriverManager.getConnection(url,"c##scott","tiger");	
			System.out.println("데이터 베이스 접속 성공!");
			return con;
		}catch(ClassNotFoundException ce) {
			System.out.println("드라이버 로딩실패:"+ ce.getMessage());
		}catch(SQLException se) {
			System.out.println("에러:" + se.getMessage());
		}
		return null;
	}
	public static void close(Connection con) {
		try {
			if(con!=null) con.close();
		}catch(SQLException s) {
			s.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt!=null) stmt.close();
		}catch(SQLException s) {
			s.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs!=null) rs.close();
		}catch(SQLException s) {
			s.printStackTrace();
		}
	}
	public static void close(Connection con,Statement stmt,ResultSet rs) {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(con!=null) con.close();
		}catch(SQLException s) {
			s.printStackTrace();
		}
	}
}












