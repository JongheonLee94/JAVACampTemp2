package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClubDAO;
import dao.ClubDAO_OracleImpl;
import vo.ClubVO;

public class ClubDetailController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String serial = request.getParameter("serial");
		
		ClubDAO clubDAO = new ClubDAO_OracleImpl();
		
		ClubVO clubVO = clubDAO.getDetail(serial);
		HttpSession session = request.getSession();
		session.setAttribute("club", clubVO);
		
		return "redirect:/club/clubDetail.jsp";
	}
	
}
