package controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;
import model.Category;
import model.Tag;
import model.User;
import model.service.IArticleService;
import model.service.ICategoryService;
import model.service.ITagService;
import model.service.impl.ArticleService;
import model.service.impl.CategoryService;
import model.service.impl.TagService;
import utils.FormUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin/articles" })
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IArticleService articleService;
	ITagService tagService;
	ICategoryService categoryService;

	public ArticleController() {
		articleService = new ArticleService();
		tagService = new TagService();
		categoryService = new CategoryService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equals("create")) {
			List<Tag> tags = tagService.listAllTag();
			req.setAttribute("tags", tags);
			List<Category> categories = categoryService.listCategory();
			req.setAttribute("categories", categories);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_form.jsp");
			rd.forward(req, resp);
		} else {
			List<Article> articles = articleService.findAll();
			req.setAttribute("articles", articles);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_list.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		if (action != null && action.equals("create")) {
			Article article = FormUtil.toModel(Article.class, req);
			Category cat = new Category();
			cat.setName(article.getCategoryName());
			cat = categoryService.findCategoryByName(cat);
			article.setCategory(cat);
			User user = (User) SessionUtil.getInstance().getValue(req, "user");
			article.setUser(user);
			articleService.add(article);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_list.jsp");
			rd.forward(req, resp);
		}
	}
}
