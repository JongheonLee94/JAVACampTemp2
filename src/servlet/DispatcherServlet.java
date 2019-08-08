package servlet;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;

@SuppressWarnings("serial")
public class DispatcherServlet extends HttpServlet {

	private Map<String, Controller> map = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		map = new Hashtable<String, Controller>();
		String[] controllers = config.getInitParameter("controllers").split(",");
		for (String controller : controllers) {
			try {
				Class<?> cls = Class.forName(controller.trim());
				RequestMapping an = cls.getAnnotation(RequestMapping.class);
				String key = an.value();
				Controller value = (Controller) cls.newInstance();

				map.put(key, value);
			} catch (Exception e) {

			}
		}
		System.out.println(map.toString());
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctxPath = request.getContextPath();
		String uri = request.getRequestURI();
		uri = uri.substring(ctxPath.length());
		
		System.out.println(uri);
		Controller controller =  map.get(uri);
		
		if(controller == null ) {
			System.out.println("해당 요청을 처리할 수 없습니다.");
		}
		
		try {
		String path = controller.handleRequest(request, response);
		if(path == null) {
			
		}
		else if(path.startsWith("redirect:")) {
			response.sendRedirect(ctxPath+path.substring(9));
		}else {
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		}catch (Exception e) {
			HttpSession session = request.getSession();
			session.setAttribute("err", e);
			e.printStackTrace();
			response.sendRedirect(ctxPath + "/err.jsp");
		}
	}

}
