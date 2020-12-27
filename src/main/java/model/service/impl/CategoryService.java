package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.impl.CategoryDAO;
import model.Category;
import model.service.ICategoryService;

public class CategoryService implements ICategoryService {
	
	private static CategoryDAO catDAO;
	
	public CategoryService(){
		catDAO = new CategoryDAO();
	}
	
	@Override
	public boolean checkExisted(String name) {
		Category cat = catDAO.findCategoryByName(name);
		if(cat!=null) return true;
		return false;
	}

	@Override
	public void insertCategory(Category cat) {
		
		cat.setId(UUID.randomUUID().toString());
		cat.setCreatedDate(new Date(System.currentTimeMillis()));
		cat.setLastModified(new Date(System.currentTimeMillis()));
		catDAO.save(cat);
		
	}

	@Override
	public Category findCategoryById(String id) {
		Category cat = catDAO.findCategoryById(id);
		return cat;
	}


	@Override
	public List<Category> listCategory() {
		List<Category> categories = catDAO.listAllCategory();
		return categories;
	}


	public boolean updateCategory(Category cat) {
		return catDAO.updateCategory(cat);
	}

	@Override
	public boolean deleteCategoryById(String id) {
		return catDAO.deleteCategoryById(id);
	}

}
