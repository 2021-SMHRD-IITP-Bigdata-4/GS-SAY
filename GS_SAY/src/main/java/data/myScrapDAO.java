package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

public class myScrapDAO {
	
	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String name = null;
	String id = null;
	String pw = null;
	myScrapDTO dto = null;
	ArrayList<myScrapDTO> scrapView = null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_e5";
			String db_pw = "smhrd5";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int myInfo(listDTO login, String num) {
		conn();
		String sql = "insert into myscrap(scrap_num, member_id, info_num, end_day, info_name, info_link) select scrapnum.nextval, ?, info_num, end_day, info_name, info_link from maininfo where info_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, login.getId());
			psmt.setString(2, num);
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
	} return cnt;
	}
	
	public ArrayList<myScrapDTO> scrapView(listDTO login) {
		conn();
		
		String sql = "select * from myscrap where member_id = ?";
		scrapView = new ArrayList<myScrapDTO>();
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, login.getId());
		rs = psmt.executeQuery();
		
		while (rs.next()) {
			int scrap_num = rs.getInt(1);
			String member_id = rs.getString(2);
			int info_num = rs.getInt(3);
			String end_day = rs.getString(4);
			String info_name = rs.getString(5);
			String info_link = rs.getString(6);
			
			dto = new myScrapDTO(scrap_num, member_id, info_num, end_day, info_name, info_link);
			scrapView.add(dto);
		}
		
		for (int i = 0; i < 10; i++)
			System.out.println(i);
		
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			close();
		} return scrapView;
	}

}
