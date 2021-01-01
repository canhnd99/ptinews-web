package controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Comment;
import model.service.ICommentService;
import model.service.impl.CommentService;

@WebServlet("/admin/comments")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private ICommentService cs;
    
    public CommentController() {
        super(); 
        cs = new CommentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("list") || action == null ){
			showListComment(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void showListComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		int recordPerPage = 10;
		int total = cs.countComment();
		int totalPage = 0; 
		
		if(total > 0){
			totalPage = (int) Math.ceil((float)total/recordPerPage);
			request.setAttribute("totalPage", totalPage);
		}
		
		int currentPage = 1;
		if(request.getParameter("page")!=null) currentPage = Integer.parseInt(request.getParameter("page"));
		request.setAttribute("currentPage", currentPage);
		
		List<Comment> comments = cs.paginationComment(recordPerPage, (currentPage-1)*recordPerPage );
		
		request.setAttribute("comments", comments);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/comment_list.jsp");
		rd.forward(request, response);
	}

}
