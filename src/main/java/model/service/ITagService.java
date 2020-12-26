package model.service;

import java.util.List;

import model.Tag;

public interface ITagService {
	boolean checkExisted(String name);
	void insertTag(Tag tag);
	Tag findTagById(String id);
	boolean updateTag(Tag tag);
	List<Tag> listAllTag();
	boolean deleteTagById(String id);
}
