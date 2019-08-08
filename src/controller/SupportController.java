package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.SupportDAO;
import dao.SupportDAO_OracleImpl;
import servlet.RequestMapping;
import util.Util;
import vo.SupportVO;

@RequestMapping("/support_regist.do")
public class SupportController implements Controller{

   @Override
   public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
      String SavePath = "C:\\jps_file\\";
      SupportVO vo = null;
      
      
      MultipartRequest mpr = null;
      try {
         mpr = new MultipartRequest(request, SavePath, 1024 * 1024 * 200, "utf-8", new DefaultFileRenamePolicy());
      } catch (IOException e) {
         e.printStackTrace();
      }

      vo = new SupportVO();
      
      vo.setSerial(mpr.getParameter("serial"));
      vo.setsDate(mpr.getParameter("sDate"));
      vo.seteDate(mpr.getParameter("eDate"));
      vo.setItem(mpr.getParameter("item"));
      vo.setLimitMoney(Util.parseInt(mpr.getParameter("limitMoney")));
      vo.setRequestMoney(Util.parseInt(mpr.getParameter("requestMoney")));
      vo.setContent(mpr.getParameter("content"));
      vo.setRegDate(mpr.getParameter("regDate"));
      vo.setStatus(Util.parseInt(mpr.getParameter("status")));
      vo.setFileReport(mpr.getFilesystemName("fileReport"));
      vo.setMemberSerial(mpr.getParameter("memberSerial"));
      vo.setAdminSerial(mpr.getParameter("adminSerial"));
      
      System.out.println("SupportController");
      
      SupportDAO dao = new SupportDAO_OracleImpl();
      dao.register(vo);
      
      return "redirect:/mypage/mypageReport.jsp";
   }

}