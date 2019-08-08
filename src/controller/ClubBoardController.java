package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClubDAO;
import dao.ClubDAO_OracleImpl;
import servlet.RequestMapping;
import util.Util;

@RequestMapping("/clubBoard.do")
public class ClubBoardController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		int page = Util.parseInt(request.getParameter("page"));
		
		ClubDAO clubDAO = new ClubDAO_OracleImpl();
		

		
		return null;
	}
	
}
