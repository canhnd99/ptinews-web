package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
@MultipartConfig(maxFileSize = 1024 * 1024 * 50)
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IArticleService articleService;
	ITagService tagService;
	ICategoryService categoryService;

	List<Article> articles;

	public ArticleController() {
		articleService = new ArticleService();
		tagService = new TagService();
		categoryService = new CategoryService();
		articles = new ArrayList<>();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");

		if (action != null) {
			if (action.equalsIgnoreCase("delete")) {
				String articleId = req.getParameter("articleId");
				articleService.delete(articleId);
				showListArticles(req, resp, articles);
			} else {
				List<Tag> tags = tagService.listAllTag();
				req.setAttribute("tags", tags);
				List<Category> categories = categoryService.listCategory();
				req.setAttribute("categories", categories);

				if (action.equalsIgnoreCase("create")) {
					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_form.jsp");
					rd.forward(req, resp);
				} else if (action.equalsIgnoreCase("edit")) {

					String articleId = req.getParameter("id");

					Article article = new Article();
					article.setId(articleId);
					article = articleService.findOne(article);

					req.setAttribute("article", article);

					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_form_update.jsp");
					rd.forward(req, resp);
				}
			}
		} else {
			showListArticles(req, resp, articles);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");

		Article article = FormUtil.toModel(Article.class, req);

		Category cat = new Category();
		cat.setId(article.getCategoryName());
		cat = categoryService.findCategoryById(cat);
		article.setCategory(cat);

		User user = (User) SessionUtil.getInstance().getValue(req, "user");
		article.setUser(user);

		if (action != null) {
			if (action.equalsIgnoreCase("create")) {
				articleService.add(article);
			} else if (action.equalsIgnoreCase("edit")) {
				article.setId(req.getParameter("id"));
				articleService.update(article);
			}
		}
		showListArticles(req, resp, articles);
	}

	private void showListArticles(HttpServletRequest req, HttpServletResponse resp, List<Article> articles) {
		try {
			articles = articleService.findAll();
			req.setAttribute("articles", articles);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_list.jsp");
			rd.forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}
