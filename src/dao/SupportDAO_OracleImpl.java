package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.Util;
import vo.SupportVO;

public class SupportDAO_OracleImpl implements SupportDAO {

   @Override
   public void register(SupportVO vo) {
      Connection conn = null;
      PreparedStatement stmt = null;

      try {
         conn = Util.getConn();
         String sql = "INSERT INTO SUPPORT VALUES(seq_support.nextval, sysdate, sysdate, ?, ?, ?, ?, SYSDATE, 0, 'h', '1100000001', 'admin')";
         
         System.out.println(sql);
         stmt = conn.prepareStatement(sql);
         
         
         //stmt.setString(1, vo.getsDate());
         //stmt.setString(2, vo.geteDate());
         stmt.setString(1, vo.getItem());
         stmt.setInt(2, vo.getLimitMoney());
         stmt.setInt(3, vo.getRequestMoney());
         stmt.setString(4, vo.getContent());
         //stmt.setString(5, vo.getFileReport());
         System.out.println(vo.getItem() + " , " + vo.getLimitMoney()+ " , " + vo.getRequestMoney()+ " , " + vo.getContent());
         System.out.println("ss");
         stmt.executeUpdate();
         
         System.out.println("dd");
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         if (stmt != null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
         if (conn != null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
      }

   }

}