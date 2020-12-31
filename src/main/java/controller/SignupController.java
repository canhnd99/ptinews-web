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
import utils.FormUtil;

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
		req.setCharacterEncoding("UTF-8");
		showSignupForm(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		User user = FormUtil.toModel(User.class, req);
		if(user != null) {
			boolean check = userService.add(user);
			if(check){
				req.setAttribute("success_message", "Register successfully!");
			} else req.setAttribute("err_message", "Some error happend!");
		} else {
			req.setAttribute("err_message", "Form is not fill");
		}
		showSignupForm(req, resp);
	}
	
	public void showSignupForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/signup.jsp");
		rd.forward(req, resp);
	}
	
}

