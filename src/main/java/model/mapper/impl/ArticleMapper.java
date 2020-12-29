package model.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.Article;
import model.Category;
import model.User;
import model.mapper.RowMapper;
import model.service.ICategoryService;
import model.service.IUserService;
import model.service.impl.CategoryService;
import model.service.impl.UserService;


public class ArticleMapper implements RowMapper<Article> {
	
	IUserService userService;
	ICategoryService categoryService;
	
	public ArticleMapper() {
		userService = new UserService();
		categoryService = new CategoryService();
	}

	@Override
	public Article mapRow(ResultSet rs) {
		Article article = new Article();
		try {
			if(rs.getString("id") != null) {
				article.setId(rs.getString("id"));
			}
			if(rs.getString("title") != null){
				article.setTitle(rs.getString("title"));
			}
			if(rs.getString("description") != null) {
				article.setDescription(rs.getString("description"));
			}
			if(rs.getString("content") != null) {
				article.setContent(rs.getString("content"));
			}
			if(rs.getString("thumnail") != null) {
				article.setThumnail(rs.getString("thumnail"));
			}
			if(rs.getString("status") != null) {
				article.setStatus(rs.getString("status"));
			}
			if(rs.getString("tbl_user_id") != null) {
				User user = new User();
				user.setId(rs.getString("tbl_user_id"));
				user = userService.findOneById(user);
				article.setUser(user);
			}
			if(rs.getString("tbl_category_id") != null) {
				Category category = new Category();
				category.setId(rs.getString("tbl_category_id"));
				category = categoryService.findCategoryById(category);
				article.setCategory(category);
			}
			if(rs.getDate("created_date") != null) {
				article.setCreatedDate(rs.getDate("created_date"));
			}
			if(rs.getDate("last_modified") != null) {
				article.setLastModified(rs.getDate("last_modified"));
			}
			return article;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
