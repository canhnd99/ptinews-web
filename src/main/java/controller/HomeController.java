package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;
import model.Category;
import model.service.IArticleService;
import model.service.ICategoryService;
import model.service.impl.ArticleService;
import model.service.impl.CategoryService;

@WebServlet(urlPatterns = {"/trang-chu", ""})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IArticleService ar;
	private ICategoryService catService;
	
	public HomeController(){
		super();
		ar = new ArticleService();
		catService = new CategoryService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		List<Category> categories = catService.listCategory();
		Map<Category, List<Article>> params = new HashMap<>();
		for(Category cat :categories){
			List<Article> lists = ar.getArticleByCategoryId(cat, 3);
			
			if(lists!=null && lists.size()>0)
				params.put(cat, lists);
		
		}
		
		List<Article> lastestArticle = ar.getLastestArticle(3, 0);
		List<Article> newArticle = ar.getLastestArticle(3, 3);
		List<Article> eventArticle = ar.getEventArticle(5);
		List<Article> hotArticle = ar.getStickyArticle(5);
		
		req.setAttribute("catWithArticle", params);
		req.setAttribute("lastestArticle", lastestArticle);
		req.setAttribute("newArticle", newArticle);
		req.setAttribute("eventArticle", eventArticle);
		req.setAttribute("hotArticle", hotArticle);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/home.jsp");
		rd.forward(req, resp);
	}
}

