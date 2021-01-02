package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
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
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin/users" })
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService;

	List<User> users;

	public AdminController() {
		userService = new UserService();
		users = new ArrayList<>();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		
		//get logged user
		User loggedAdmin = (User) SessionUtil.getInstance().getValue(req, "user");
		
		if (action != null) {
			if (action.equals("create")) {
				RequestDispatcher rd = req.getRequestDispatcher("/views/admin/user_form_create.jsp");
				rd.forward(req, resp);
			} else {
				String id = req.getParameter("id");
				User user = new User();
				user.setId(id);
				
				//get updated or deleted user info
				user = userService.findOneById(user);
				
				if (action.equals("delete")) {
					// check mater admin
					// true: can delete other admin and normal user
					// false: only delete normal user
					if (loggedAdmin.getEmail().equals("admin@ptinnews.io")) {
						userService.delete(user);
					} else {
						if (user.getIsAdmin() != true) {
							userService.delete(user);
						}
					}
					showListUsers(req, resp, users, loggedAdmin);
				} else if (action.equals("edit")) {
					// check mater admin
					// true: can update other admin and normal user
					// false: only update normal user
					if (loggedAdmin.getEmail().equals("admin@ptinnews.io")) {
						req.setAttribute("master", loggedAdmin);
						req.setAttribute("updatedUser", user);
					} else {
						if (user.getIsAdmin() != true) {
							req.setAttribute("updatedUser", user);
						}
					}
					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/user_form_update.jsp");
					rd.forward(req, resp);
				}
			}
		} else {
			showListUsers(req, resp, users, loggedAdmin);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		
		//get logged admin
		User loggedAdmin = (User) SessionUtil.getInstance().getValue(req, "user");
		
		if (action != null && action.equals("create")) {
			User admin = (User) FormUtil.toModel(User.class, req);
			admin.setAdmin(true);
			userService.add(admin);
		} else if (action != null && action.equals("edit")) {
			User updatedAdmin = (User) FormUtil.toModel(User.class, req);
			userService.update(updatedAdmin);
		}
		showListUsers(req, resp, users, loggedAdmin);
	}

	private void showListUsers(HttpServletRequest req, HttpServletResponse resp, List<User> users, User loggedAdmin) {
		try {
			users = userService.findAll();
			req.setAttribute("users", users);
			req.setAttribute("loggedAdmin", loggedAdmin);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/user_list.jsp");
			rd.forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}
