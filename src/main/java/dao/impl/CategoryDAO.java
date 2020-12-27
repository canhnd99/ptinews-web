package dao.impl;

import java.util.ArrayList;
import java.util.List;

import dao.ICategoryDAO;
import model.Category;
import model.mapper.impl.CategoryMapper;

public class CategoryDAO extends BaseDAO<Category> implements ICategoryDAO{

	@Override
	public void save(Category cat) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_category");
		sql.append(" (id, name, description, created_date, last_modified, tbl_user_id) ");
		sql.append(" VALUES (?, ?, ?, ?, ?, ?)");
		
		insert(sql.toString(), cat.getId(), cat.getName(), cat.getDescription(), 
					cat.getCreatedDate(), cat.getLastModified(), cat.getUser().getId());
	}

	@Override
	public Category findCategoryByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * FROM tbl_category WHERE name = ?");
		List<Category> categories = find(sql.toString(), new CategoryMapper(), name);
		if(categories.size()>0) return categories.get(0);
		return null;
	}

	@Override
	public Category findCategoryById(String id) {
		StringBuilder sql = new StringBuilder("SELECT * FROM tbl_category WHERE id = ?");
		return find(sql.toString(), new CategoryMapper(), id).get(0);
	}

	@Override
	public List<Category> listAllCategory() {
		
		List<Category> categories = new ArrayList<>();
		StringBuilder sql = new StringBuilder("SELECT * FROM tbl_category");
		categories = find(sql.toString(),  new CategoryMapper(), "");
		
		return categories;
	}

	@Override
	public boolean updateCategory(Category cat) {

		StringBuilder sql = new StringBuilder("UPDATE tbl_category SET ");
		sql.append(" name = ?, description = ?, last_modified = ? ");
		sql.append(" WHERE id = ?;");
		
		int rs = insert(sql.toString(), cat.getName(), cat.getDescription(), cat.getLastModified(), cat.getId());
		return rs > 0; //true or false?
	}

	@Override
	public boolean deleteCategoryById(String id) {
		//DELETE FROM tbl_category WHERE (id = d355c3dd-cb2f-46e1-a433-64320840ff0e);
		StringBuilder sql = new StringBuilder("DELETE FROM tbl_category WHERE id = ?");
		int rs = insert(sql.toString(), id);
		return rs > 0;
	}
	
	

}
