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
import model.Comment;
import model.service.IArticleService;
import model.service.ICommentService;
import model.service.impl.ArticleService;
import model.service.impl.CommentService;

@WebServlet("/article")
public class ArticleFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IArticleService arService;
	private ICommentService cs;
       
    public ArticleFrontController() {
        super();
        arService = new ArticleService();
        cs = new CommentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id!=null){
			Article article = new Article();
			article.setId(id);
			Article result =  arService.findOne(article);
		
			if(result!=null){
				
				List<Comment> comments = cs.findCommentByArticle(result);
				request.setAttribute("comments", comments);
				List<Article> lists = arService.getArticleByCategoryId(result.getCategory(), 5); 
				request.setAttribute("relateArticle", lists);
				request.setAttribute("article", result);
				showArticleForm(request, response);
			} else{
				
			}
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void showArticleForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/article.jsp");
		rd.forward(request, response);
	}

}
