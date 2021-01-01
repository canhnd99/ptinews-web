package controller.admin;

import java.io.IOException;
import java.util.List;

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

@WebServlet(urlPatterns = { "/admin/users" })
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService;

	public AdminController() {
		userService = new UserService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equals("create")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/user_form.jsp");
			rd.forward(req, resp);
		} else {
			if (action != null && action.equals("delete")) {
				String id = req.getParameter("id");
				User user = new User();
				user.setId(id);
				userService.delete(user);
			} else if (action != null && action.equals("edit")) {

			}
			List<User> users = userService.findAll();
			req.setAttribute("users", users);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/user_list.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equals("create")) {
			User admin = (User) FormUtil.toModel(User.class, req);
			admin.setAdmin(true);
			userService.add(admin);
		}
		List<User> users = userService.findAll();
		req.setAttribute("users", users);
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/user_list.jsp");
		rd.forward(req, resp);
	}
}
