package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ArticleModel;
import utils.DataJSON;
import utils.ObjectConverter;

@WebServlet(urlPatterns = { "/article" })
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ObjectConverter objectConverter;
	
	public ArticleController() {
		objectConverter = new ObjectConverter();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			String api = "http://localhost:8080/admin/api/v1/article";
	        String json = DataJSON.getJSONData(api, "GET");
			ArticleModel[] articles = objectConverter.jsonToListArticles(json);
			req.setAttribute("articles", articles);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			String api = "http://localhost:8080/admin/api/v1/article";
	        DataJSON.setJSONData(api, "POST");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
