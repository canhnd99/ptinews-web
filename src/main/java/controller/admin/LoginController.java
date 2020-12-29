package controller.admin;

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
import utils.SessionUtil;

/*
 * admin account:
 * username: canhnd
 * password: canhnd15@
 * email: canhnd15@gmail.com
 * 
 * user account:
 * username: hieupq
 * password: hieu12@
 * email: hieupq@gmail.com
 * */

@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService;

	public LoginController() {
		userService = new UserService();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		User user = FormUtil.toModel(User.class, req);
		user = userService.checkLogin(user);
		if (user != null) {
			if (user.getIsAdmin() == true) {
				SessionUtil.getInstance().putValue(req, "ADMIN", user);
				req.setAttribute("admin", user);
				RequestDispatcher rd = req.getRequestDispatcher("/views/admin/index.jsp");
				rd.forward(req, resp);
			}
		} else {
			resp.sendRedirect(req.getContextPath() + "/login?action=login&message=error_info&alert=danger");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/login.jsp");
		rd.forward(req, resp);
	}
}
