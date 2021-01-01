package dao;

import java.util.List;

import model.Article;
import model.Comment;
import model.User;

public interface ICommentDAO {
	public boolean addComment(Comment c);
	public boolean updateComment(Comment c);
	public boolean deleteComment(Comment c);
	public Comment findCommentById(Comment c);
	public List<Comment> findCommentByUserAndArticle(User u, Article a);
	public List<Comment> findCommentByArticle(Article a);
	public List<Comment> findCommentByUser(User u);
	public List<Comment> findAll();
	public int countComment();
	public List<Comment> paginationComment(int limit, int offset);
}
