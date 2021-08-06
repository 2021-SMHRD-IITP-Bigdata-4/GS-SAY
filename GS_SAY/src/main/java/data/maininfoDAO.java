package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import test.mainInfoDTO;

public class maininfoDAO {
	
	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String name = null;
	String id = null;
	String pw = null;
	mainInfoDTO dto = null;
	ArrayList<mainInfoDTO> endDate = null;
	ArrayList<mainInfoDTO> startDate = null;
	ArrayList<mainInfoDTO> searchDto = null;
	
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

	public ArrayList<mainInfoDTO> endinfo() {
		conn();
		String sql = "select * from maininfo order by end_day asc";
		endDate = new ArrayList<mainInfoDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			for (int i = 0; i < 8; i++) {
				rs.next();
				int infoNum = rs.getInt(1);
				String infoName = rs.getString(2);
				String startDay = rs.getString(3);
				String endDay = rs.getString(4);
				int code = rs.getInt(5);
				String infoLink = rs.getString(6);
				
				dto = new mainInfoDTO(infoNum, infoName, startDay, endDay, code, infoLink);
				endDate.add(dto); 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		} return endDate;
	}
	public ArrayList<mainInfoDTO> startinfo() {
		conn();
		String sql = "select * from maininfo order by start_day desc";
		startDate = new ArrayList<mainInfoDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			for (int i = 0; i < 8; i++) {
				rs.next();
				int infoNum = rs.getInt(1);
				String infoName = rs.getString(2);
				String startDay = rs.getString(3);
				String endDay = rs.getString(4);
				int code = rs.getInt(5);
				String infoLink = rs.getString(6);
				
				dto = new mainInfoDTO(infoNum, infoName, startDay, endDay, code, infoLink);
				startDate.add(dto); 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		} return startDate;
	}
	
	public ArrayList<mainInfoDTO> code(String infoname) {
		conn();
		int resultnum = 0;
		try {
			String sql = "select * from maininfo where code = (select code from category where cate_name = ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, infoname);
			rs = psmt.executeQuery();
			searchDto=new ArrayList<mainInfoDTO>();
			while(rs.next()) {
				int infoNum = rs.getInt(1);
				String infoName = rs.getString(2);
				String startDay = rs.getString(3);
				String endDay = rs.getString(4);
				int code = rs.getInt(5);
				String infoLink = rs.getString(6);
				dto = new mainInfoDTO(infoNum, infoName, startDay, endDay, code, infoLink);
				searchDto.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();}
		return searchDto;}
	
}
