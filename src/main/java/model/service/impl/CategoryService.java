package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.ICategoryDAO;
import dao.impl.CategoryDAO;
import model.Category;
import model.service.ICategoryService;

public class CategoryService implements ICategoryService {

	ICategoryDAO catDAO;

	public CategoryService() {
		catDAO = new CategoryDAO();
	}

	@Override
	public boolean checkExisted(String name) {
		Category cat = catDAO.findCategoryByName(name);
		if (cat != null)
			return true;
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
	public Category findCategoryById(Category cat) {
		cat = catDAO.findCategoryById(cat);
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
	public boolean deleteCategoryById(Category cat) {
		return catDAO.deleteCategoryById(cat);
	}

	@Override
	public Category findCategoryByName(Category cat) {
		return catDAO.findCategoryByName(cat.getName());
	}

	@Override
	public int count() {
		return catDAO.count();
	}

	@Override
	public List<Category> paginationCategory(int limit, int offset) {
		return catDAO.paginationCategory(limit, offset);
	}
}
