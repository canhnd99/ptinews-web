package model.mapper.impl;

import java.sql.ResultSet;

import model.Article;
import model.Comment;
import model.User;
import model.mapper.RowMapper;
import model.service.IArticleService;
import model.service.IUserService;
import model.service.impl.ArticleService;
import model.service.impl.UserService;


public class CommentMapper implements RowMapper<Comment> {

	private IArticleService as;
	private IUserService us;
	public CommentMapper(){
		super();
		as  = new ArticleService();
		us = new UserService();
	}
	
	@Override
	public Comment mapRow(ResultSet rs) {
		Comment comment = new Comment();
		try {
			comment.setId(rs.getString("id"));
			comment.setContent(rs.getString("content"));
			comment.setStatus(rs.getString("status"));
			comment.setCreatedDate(rs.getDate("created_date"));
			comment.setLastModified(rs.getDate("last_modified"));
			
			Article a = new Article();
			a.setId(rs.getString("tbl_article_id"));
			comment.setArticle(as.findOne(a));
			
			User u = new User();
			u.setId(rs.getString("tbl_user_id"));
			comment.setUser(us.findOneById(u));
			
			return comment;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
