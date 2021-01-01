package controller.admin;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;
import model.User;
import model.service.IUserService;
import model.service.impl.CategoryService;
import model.service.impl.UserService;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/admin/categories", "/admin/create-category", "/admin/update-category" })
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static CategoryService categoryService;
	private IUserService userService;

	public CategoryController() {
		categoryService = new CategoryService();
		userService = new UserService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		String categoryId = req.getParameter("categoryId");

		Category cat = new Category();
		cat.setId(categoryId);

		if (action != null && action.equalsIgnoreCase("create")) {
			req.setAttribute("action", action);
			showFormCategory(req, resp);
		} else if (action != null && action.equalsIgnoreCase("edit") && categoryId != null) {
			cat = categoryService.findCategoryById(cat);
			if (cat != null) {
				req.setAttribute("action", action);
				req.setAttribute("cat", cat);
				showFormCategory(req, resp);
			} else {
				req.setAttribute("err_message", "Category not found!");
				showListCategory(req, resp);
			}
		} else if (action.equalsIgnoreCase("delete") && categoryId != null) {
			cat = categoryService.findCategoryById(cat);
			if (cat != null) {
				boolean deleted = categoryService.deleteCategoryById(cat);

				if (deleted)
					req.setAttribute("success_message", "Category <b>" + cat.getName() + "</b> has been deleted!");
				else
					req.setAttribute("err_message",
							"Some error happend when delete category. Please check and try again!");
			} else {
				req.setAttribute("err_message", "Category with ID = " + categoryId + " not found.");
			}
			showListCategory(req, resp);
		} else {
			showListCategory(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String action = req.getParameter("action");

		Category cat = FormUtil.toModel(Category.class, req);
		User loggedUser = (User) req.getSession().getAttribute("user");

		boolean check = (cat != null && loggedUser != null && action != null &&loggedUser.getIsAdmin());

		if (action.equalsIgnoreCase("insert") && check) {

			boolean checkExisted = categoryService.checkExisted(cat.getName());

			if (cat.getName() == null) {
				req.setAttribute("err_message", "Name is required!");
			} else if (checkExisted) {
				req.setAttribute("err_message", "Category already existed!");
			} else {
				User user = new User();
				user.setId(loggedUser.getId());
				cat.setUser(userService.findOneById(user));
				categoryService.insertCategory(cat);
				req.setAttribute("success_message", "Category <b>" + cat.getName() + " </b> has been created!");
			}
		} else if (action.equalsIgnoreCase("update") && check && cat.getId() != null) {
			
			Category catExisted = categoryService.findCategoryById(cat);
			
			if (catExisted != null) {
				cat.setLastModified(new Date(System.currentTimeMillis()));
				boolean updated = categoryService.updateCategory(cat);
				if (updated)
					req.setAttribute("success_message", "Category updated successfully!");
				else
					req.setAttribute("err_message", "Some error happend when update.");

			} else
				req.setAttribute("err_message", "Category not found!");

		} else {
			req.setAttribute("err_message", "Some error happended!");
		}

		showListCategory(req, resp);

	}

	public void showListCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int recordPerPage = 5;
		int total = categoryService.count();
		int totalPage = 0; 
		
		if(total > 0){
			totalPage = (int) Math.ceil((float)total/recordPerPage);
			request.setAttribute("totalPage", totalPage);
		}
		
		int currentPage = 1;
		if(request.getParameter("page")!=null) currentPage = Integer.parseInt(request.getParameter("page"));
		request.setAttribute("currentPage", currentPage);

		List<Category> categories = categoryService.paginationCategory(recordPerPage, (currentPage-1)*recordPerPage);
		request.setAttribute("categories", categories);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/category_list.jsp");
		rd.forward(request, response);
	}

	public void showFormCategory(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/category_form.jsp");
		rd.forward(req, resp);
	}
}
