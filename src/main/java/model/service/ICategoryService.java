package model.service;

import java.util.List;

import model.Category;

public interface ICategoryService {
	boolean checkExisted(String name);

	void insertCategory(Category cat);

	Category findCategoryById(Category cat);
	
	Category findCategoryByName(Category cat);

	boolean updateCategory(Category cat);

	List<Category> listCategory();

	boolean deleteCategoryById(Category cat);
}
