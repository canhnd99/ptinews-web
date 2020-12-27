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
		Article entity = new Article();
		try {
			if(rs.getString("id") != null) {
				entity.setId(rs.getString("id"));
			}
			if(rs.getString("title") != null){
				entity.setTitle(rs.getString("title"));
			}
			if(rs.getString("description") != null) {
				entity.setDescription(rs.getString("description"));
			}
			if(rs.getString("content") != null) {
				entity.setContent(rs.getString("content"));
			}
			if(rs.getString("thumnail") != null) {
				entity.setThumnail(rs.getString("thumnail"));
			}
			if(rs.getBoolean("status")) {
				entity.setStatus(rs.getBoolean("status"));
			}
			if(rs.getString("slug") != null) {
				entity.setSlug(rs.getString("slug"));
			}
			if(rs.getString("tbl_user_id") != null) {
				User user = new User();
				user.setId(rs.getString("tbl_user_id"));
				user = userService.findOneById(user);
				entity.setUser(user);
			}
//			if(rs.getString("tbl_category_id") != null) {
//				Category category = new Category();
//				category.setId(rs.getString("tbl_category_id"));
//				category = categoryService.findCategoryById();
//			}
			if(rs.getDate("created_date") != null) {
				entity.setCreatedDate(rs.getDate("created_date"));
			}
			if(rs.getDate("last_modified") != null) {
				entity.setLastModified(rs.getDate("last_modified"));
			}
			return entity;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
