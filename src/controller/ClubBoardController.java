package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClubDAO;
import dao.ClubDAO_OracleImpl;
import servlet.RequestMapping;
import util.Util;
import vo.ClubCardVO;

@RequestMapping("/clubBoard.do")
public class ClubBoardController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("viewtype");
		int page = Util.parseInt(request.getParameter("pagenum"));
		
		ClubDAO clubDAO = new ClubDAO_OracleImpl();
		
		List<ClubCardVO> clubCards = clubDAO.getClub(type, page);
		HttpSession session = request.getSession();
		session.setAttribute("clubCards", clubCards);
		
		return "redirect:/club/clubBoard.jsp";
	}
	
}
