package model.mapper.impl;

import java.sql.ResultSet;

import model.Category;
import model.User;
import model.mapper.RowMapper;
import model.service.ICategoryService;
import model.service.IUserService;
import model.service.impl.CategoryService;
import model.service.impl.UserService;


public class CategoryMapper implements RowMapper<Category> {

	IUserService userService;
	ICategoryService categoryService;
	
	public CategoryMapper() {
		userService = new UserService();
		categoryService = new CategoryService();
	}

	@Override
	public Category mapRow(ResultSet rs) {
		
		Category category = new Category();
		
		try {
			if (rs.getString("id") != null) {
				category.setId(rs.getString("id"));
			}
			if (rs.getString("name") != null) {
				category.setName(rs.getString("name"));
			}
			if (rs.getString("description") != null) {
				category.setDescription(rs.getString("description"));
			}
			if (rs.getDate("last_modified") != null) {
				category.setLastModified(rs.getDate("last_modified"));
			}
			if (rs.getDate("created_date") != null) {
				category.setCreatedDate(rs.getDate("created_date"));
			}
			category.setUser_id(rs.getString("tbl_user_id"));
			
			return category;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
