package controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;
import model.User;
import model.service.IArticleService;
import model.service.impl.ArticleService;
import utils.FormUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = {"/admin/articles"})
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IArticleService articleService;
	
	public ArticleController() {
		articleService = new ArticleService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String action = req.getParameter("action");
		if(action != null && action.equals("edit")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_form.jsp");
			rd.forward(req, resp);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/post_list.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		Article article = FormUtil.toModel(Article.class, req);
		User user = (User)SessionUtil.getInstance().getValue(req, "USER");
		article.setUser(user);
		articleService.addNewArticle(article);
	}
}
