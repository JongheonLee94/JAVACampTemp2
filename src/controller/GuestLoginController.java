package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GuestDAO;
import dao.GuestDAO_OracleImpl;
import servlet.RequestMapping;
import vo.GuestVO;

@RequestMapping("/login_guest.do")
public class GuestLoginController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		GuestVO gvo = new GuestVO();
		gvo.setPhone(request.getParameter("phone"));
		gvo.setPw(request.getParameter("pw"));
		System.out.println(gvo.getPw().length() == 13);
		System.out.println(gvo.getPw());
		if (gvo.getPhone().length() == 13) {
			GuestDAO dao = new GuestDAO_OracleImpl();
			gvo = dao.register(gvo);
			if (gvo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("guest", gvo);
				return "redirect:/index.jsp";
			}
		}
		return "redirect:/login/login_guest.jsp";

	}

}
