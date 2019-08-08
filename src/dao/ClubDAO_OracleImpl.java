package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import util.S3Util;
import util.Util;
import vo.ClubCardVO;
import vo.ClubVO;
import vo.ScheduleVO;

public class ClubDAO_OracleImpl implements ClubDAO{

	@Override
	public ClubVO getDetail(String serial) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ClubVO vo = null;
		try {
			conn = Util.getConn();
			String sql = "SELECT * FROM club WHERE serial=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, serial);
			rs = stmt.executeQuery();
			if(rs.next()) {
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
			if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		
		return null;
	}

	@Override
	public int maxPage() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = Util.getConn();
			String sql = "SELECT count(*) as maxPage FROM club";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt("maxPage");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
			if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		result = result % 9 == 0 ? result/9 : result/9 + 1; 
		return result;
	}

	@Override
	public List<ClubCardVO> getClub(String type, int page) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<ClubCardVO> clubCards = new ArrayList<ClubCardVO>();

		try {
			conn = Util.getConn();
			String sql = null;
			if(type.equals("rate")) {
				sql = "SELECT * FROM " + 
						"(SELECT title, rate, sdate, edate, mainpic, serial, rownum as rnum FROM " + 
						"(SELECT club.*, nvl(rate, 0) as rate FROM " + 
						"(SELECT AVG(clubrate) as rate, clubserial as serial FROM clubrate GROUP BY clubserial) clubrate " + 
						"RIGHT OUTER JOIN club " + 
						"ON clubrate.serial = club.serial) " + 
						"ORDER BY rate DESC, serial DESC )" + 
						"WHERE rnum BETWEEN ? AND ? " + 
						"ORDER BY rnum";
			}else if(type.equals("visit")) {
				sql = "SELECT * FROM " + 
						"(SELECT title, rate, sdate, edate, mainpic, serial, rownum as rnum FROM " + 
						"(SELECT club.*, nvl(rate, 0) as rate FROM " + 
						"(SELECT AVG(clubrate) as rate, clubserial as serial FROM clubrate GROUP BY clubserial) clubrate " + 
						"RIGHT OUTER JOIN club " + 
						"ON clubrate.serial = club.serial )" + 
						"ORDER BY visit DESC, serial DESC) " + 
						"WHERE rnum BETWEEN ? AND ? " + 
						"ORDER BY rnum";
				System.out.println(sql);
			}else if(type.equals("recent")) {
				sql = "SELECT * FROM " + 
						"(SELECT title, rate, sdate, edate, mainpic, serial, rownum as rnum FROM " + 
						"(SELECT club.*, nvl(rate, 0) as rate FROM " + 
						"(SELECT AVG(clubrate) as rate, clubserial as serial FROM clubrate GROUP BY clubserial) clubrate " + 
						"RIGHT OUTER JOIN club " + 
						"ON clubrate.serial = club.serial) " + 
						"ORDER BY regdate DESC, serial DESC) " + 
						"WHERE rnum BETWEEN ? AND ? " + 
						"ORDER BY rnum";
			}
			

			stmt = conn.prepareStatement(sql);
			int start = (page - 1) * 9 + 1;
			int end = (page * 9);
			stmt.setInt(1, start);
			stmt.setInt(2, end);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				ClubCardVO clubCard = new ClubCardVO();
				clubCard.setTitle(rs.getString("title"));
				clubCard.setSdate(rs.getString("sdate"));
				clubCard.setEdate(rs.getString("edate"));
				clubCard.setMainpic(rs.getString("title"));
				clubCard.setSerial(rs.getString("title"));
				clubCard.setRate(rs.getDouble("rate"));
				clubCards.add(clubCard);
			}
			//title, rate, sdate, edate, mainpic, serial
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
			if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		
		return clubCards;
	}

	@Override
	public void writeClub(HttpServletRequest request,ClubVO clubVO, List<ScheduleVO> schedules) {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = Util.getConn();
			String sql = "INSERT INTO club (serial, title, content, sdate, edate, mainpic, memberserial, visit, regdate)"
					+ "VALUES (seq_club.nextVal, ?,?,TO_DATE(?, 'YYYY-MM-DD'),TO_DATE(?, 'YYYY-MM-DD'),null,?,0,sysdate)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, clubVO.getTitle());
			stmt.setString(2, clubVO.getContent());
			stmt.setString(3, clubVO.getsDate());
			stmt.setString(4, clubVO.geteDate());
			stmt.setString(5, clubVO.getMemberSerial());
			stmt.executeUpdate();
			stmt.close();
			
			sql = "SELECT serial FROM club where title=? AND content=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, clubVO.getTitle());
			stmt.setString(2, clubVO.getContent());
			ResultSet rs = stmt.executeQuery();
			String clubserial = null;
			if(rs.next()) {
				clubserial = rs.getString("serial");
			}

			rs.close();
			stmt.close();
			
			String fileName = Util.uploadFile(clubVO.getMainPic(), clubserial);
			System.out.println(fileName);
			sql = "UPDATE club SET mainpic=? WHERE serial=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, fileName);
			stmt.setString(2, clubserial);
			stmt.executeUpdate();
			stmt.close();
			
			S3Util.uploadFile(fileName);
			
			for(ScheduleVO schedule : schedules) {
				sql = "INSERT INTO schedule (serial, schedulename, sdate, edate, entrynum, content, clubserial, price, addr)"
						+ " VALUES (seq_schedule.nextVal,?,TO_DATE(?, 'YYYY-MM-DD'),TO_DATE(?, 'YYYY-MM-DD'),?,?,?,?,?)";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, schedule.getScheduleName());
				stmt.setString(2, schedule.getsDate());
				stmt.setString(3, schedule.geteDate());
				stmt.setInt(4, schedule.getEntryNum());
				stmt.setString(5, schedule.getContent());
				stmt.setString(6, clubserial);
				stmt.setInt(7, schedule.getPrice());
				stmt.setString(8, schedule.getAddr());
				stmt.executeUpdate();
				stmt.close();
			}
			
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
			if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		
	}
	
}
