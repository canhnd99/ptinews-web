package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.service.IUserService;
import model.service.impl.UserService;
import utils.HttpUtil;

@WebServlet(urlPatterns = { "/dang-ky" })
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IUserService userService;
	
	public SignupController() {
		userService = new UserService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("views/web/signup.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		User user = HttpUtil.of(req.getReader()).toModel(User.class);
		userService.addUser(user);
	}
}

