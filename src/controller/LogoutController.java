package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.RequestMapping;

@RequestMapping("/logout.do")
public class LogoutController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		
		return "redirect:/index.jsp";
	}
	
}

//"SELECT * FROM (SELECT *, rownum as rnum FROM club) WHERE rnum < 11 and rnum > 0"