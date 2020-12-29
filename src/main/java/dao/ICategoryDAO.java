package dao;

import java.util.List;

import model.Category;

public interface ICategoryDAO {

	void save(Category cat);

	Category findCategoryByName(String name);

	Category findCategoryById(Category cat);
	
	boolean updateCategory(Category cat);

	List<Category> listAllCategory();

	boolean deleteCategoryById(Category cat);

}
