package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class listDAO {

	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String name = null;
	String id = null;
	String pw = null;
	listDTO findDto = null; 

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int join(listDTO dto) {
		conn();
		String sql = "insert into memberlist values(?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTel());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
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
	public String login(listDTO dto) {
		conn();
		try {
			String sql = "select member_name from memberlist where member_id = ? and member_pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				name = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		} return name;
	}
	public listDTO findID(listDTO dto) {
		conn();
		try {
			String sql = "select * from memberlist where member_tel = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getTel());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				
				findDto = new listDTO(id, pw, name, tel);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		} return findDto;
	}
}
