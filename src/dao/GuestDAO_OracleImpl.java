package dao;

import vo.GuestVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.Util;

public class GuestDAO_OracleImpl implements GuestDAO{

	@Override
	public GuestVO register(GuestVO vo) {
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs = null;
		try{
			conn=Util.getConn();
			String sql="select * from guest where PHONE=? AND PW=?";
			stmt=conn.prepareStatement(sql);
			stmt.setString(1,vo.getPhone());
			stmt.setString(2,vo.getPw());
			rs=stmt.executeQuery();
			if(rs.next()){
				vo.setPhone(rs.getString("phone"));
				vo.setPw(rs.getString("pw"));
				vo.setSerial(rs.getString("serial"));
			System.out.println("a");
				return vo;
			}else{
				rs.close();
				stmt.close();
				String sql2="select * from guest where phone=?";
				stmt=conn.prepareStatement(sql2);
				stmt.setString(1, vo.getPhone());
				rs=stmt.executeQuery();
				System.out.println("B");
				if(rs.next()){
					
					vo=null;
					return vo;
				}else{
					rs.close();
					stmt.close();
					String sql3="insert into guest values(1000000000 + seq_guest.nextVal,?,?)";
					stmt=conn.prepareStatement(sql3);
					stmt.setString(1,vo.getPhone());
					stmt.setString(2, vo.getPw());
					stmt.executeUpdate();
					
					System.out.println();
				}
				
			}
		}
		catch(Exception e ){
			e.printStackTrace();
		}finally{
				if (rs != null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
				if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
				if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
				
		}
		
		return vo;
	}
	
}

