package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dao.MemberDAO_OracleImpl;
import servlet.RequestMapping;
import util.Util;
import vo.MemberVO;

@RequestMapping("/join.do")
public class JoinController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		MemberVO vo = new MemberVO();
		
		vo.setEmail(request.getParameter("email"));
		vo.setPw(request.getParameter("pw"));
		vo.setPhone(request.getParameter("phone"));
		vo.setName(Util.h(request.getParameter("name")));
		vo.setGender(Util.parseInt(request.getParameter("gender")));
		vo.setAddr(Util.h(request.getParameter("addr1") + " " + request.getParameter("addr2")));
		vo.setAge(Util.parseInt(request.getParameter("age")));
		
		MemberDAO dao = new MemberDAO_OracleImpl();
		dao.register(vo);
		
		return "redirect:/login/login.jsp";
	}

}