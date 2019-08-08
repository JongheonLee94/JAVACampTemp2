package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.Util;
import vo.MemberVO;

public class MemberDAO_OracleImpl implements MemberDAO {

	@Override
	public void register(MemberVO vo) {
		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			conn = Util.getConn();
			String sql = "INSERT INTO member (serial, email, pw, phone, name, gender, addr, age, picture, regdate, role, card, cert)"
					+ " VALUES (1100000000 + seq_member.nextVal, ?, ?, ?, ?, ?, ?, ?, null, SYSDATE, 1, null, 0)";

			stmt = conn.prepareStatement(sql);
			stmt.setString(1, vo.getEmail());
			stmt.setString(2, vo.getPw());
			stmt.setString(3, vo.getPhone());
			stmt.setString(4, vo.getName());
			stmt.setInt(5, vo.getGender());
			stmt.setString(6, vo.getAddr());
			stmt.setInt(7, vo.getAge());

			stmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
			if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		}

	}

	@Override
	public MemberVO login(MemberVO vo) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			System.out.println("test1 : " + vo.getEmail() +", "+vo.getPw());
			conn = Util.getConn();
			String sql = "SELECT m.*, TO_CHAR(regDate, 'YYYY-MM-DD HH24:MI:SS') as rDate FROM member m WHERE email=? AND pw=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, vo.getEmail());
			stmt.setString(2, vo.getPw());
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				vo.setSerial(rs.getString("serial"));
				vo.setEmail(rs.getString("email"));
				vo.setPw(rs.getString("pw"));
				vo.setPhone(rs.getString("phone"));
				vo.setName(rs.getString("name"));
				vo.setGender(rs.getInt("gender"));
				vo.setAddr(rs.getString("addr"));
				vo.setAge(rs.getInt("age"));
				//vo.setPicture(rs.getString("picture"));
				vo.setRegDate(rs.getString("rDate"));
				vo.setCard(rs.getString("card"));
				vo.setRole(rs.getString("role"));
				vo.setCert(rs.getString("cert"));
			}else {
				vo = null;
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
			if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		
		return vo;
	}
}
