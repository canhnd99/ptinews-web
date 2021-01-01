package controller;

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
import model.service.IArticleService;
import model.service.ICategoryService;
import model.service.impl.ArticleService;
import model.service.impl.CategoryService;

@WebServlet("/category")
public class CategoryFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IArticleService articleService;
    private ICategoryService catService;
    public CategoryFrontController() {
        super();
        articleService = new ArticleService();
        catService = new CategoryService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		if( id!=null && !id.equals("")){
			Category catId = new Category();
			catId.setId(id);
			Category cat = catService.findCategoryById(catId);
			
			if(cat!=null){
				List<Article> lists = articleService.getArticleByCategoryId(cat, 10);
				request.setAttribute("lists", lists);
				request.setAttribute("category", cat);
				showCategoryForm(request, response);
			}
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void showCategoryForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/category.jsp");
		rd.forward(request, response);
	}

}
