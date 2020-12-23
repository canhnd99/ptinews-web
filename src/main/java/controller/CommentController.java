package controller;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Comment;
import utils.DataJSON;
import utils.ObjectConverter;

@WebServlet(urlPatterns = { "/comment" })
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ObjectConverter objectConverter;
	
	public CommentController() {
		objectConverter = new ObjectConverter();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String id = req.getParameter("articleId");
		byte[] byteId = Base64.getEncoder().encode(id.getBytes());
		String decodeId = new String(byteId, "UTF-8"); 
		String api = "http://localhost:8080/admin/api/v1/comment?articleId="+ decodeId;
		String json = DataJSON.getJSONData(api, "GET");
		Comment[] comments = objectConverter.jsonToListComments(json);
		req.setAttribute("comments", comments);
	}
}
