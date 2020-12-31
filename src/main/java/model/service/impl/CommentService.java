package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.ICommentDAO;
import dao.impl.CommentDAO;
import model.Article;
import model.Comment;
import model.User;
import model.service.ICommentService;

public class CommentService implements ICommentService {
	private ICommentDAO commentDAO;
	
	public CommentService(){
		super();
		commentDAO = new CommentDAO();
	}

	@Override
	public boolean addComment(Comment c, User user, Article article) {
		c.setId(UUID.randomUUID().toString());
		c.setArticle(article);
		c.setUser(user);
		c.setStatus("1");
		c.setCreatedDate(new Date(System.currentTimeMillis()));
		c.setLastModified(new Date(System.currentTimeMillis()));
		return commentDAO.addComment(c);
	}

	@Override
	public boolean updateComment(Comment c, User u, Article a) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteComment(Comment c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Comment findCommentById(Comment cmt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Comment> findCommentByUserAndArticle(User u, Article a) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Comment> findCommentByArticle(Article article) {
		return commentDAO.findCommentByArticle(article);
	}

	@Override
	public List<Comment> findCommentByUser(User u) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Comment> findAll() {
		return commentDAO.findAll();
	}

	@Override
	public int countComment() {
		return commentDAO.countComment();
	}

	@Override
	public List<Comment> paginationComment(int limit, int offset) {
		return commentDAO.paginationComment(limit,offset);
	}
	
}
