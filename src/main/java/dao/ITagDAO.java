package dao;

import java.util.List;

import model.Tag;

public interface ITagDAO {
	
	boolean save(Tag tag);

	Tag findTagByName(String name);

	Tag findTagById(String id);
	
	boolean updateTag(Tag tag);
	
	List<Tag> listAllTag();
	boolean deleteTagById(String id);
}
