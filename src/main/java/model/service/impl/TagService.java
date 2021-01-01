package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.ITagDAO;
import dao.impl.TagDAO;
import model.Tag;
import model.service.ITagService;
import model.service.IUserService;

public class TagService implements ITagService {
	
	ITagDAO tagDAO;
	IUserService userService;
	
	public TagService(){
		tagDAO = new TagDAO();
		userService = new UserService();
	}

	@Override
	public boolean checkExisted(String name) {
		Tag tag = tagDAO.findTagByName(name);
		return tag!=null;
	}

	@Override
	public boolean insertTag(Tag tag) {
		if(tag != null) {
			if(tag.getUser() != null && tag.getName() != null
					&& !tag.getName().isEmpty()) {
				tag.setId(UUID.randomUUID().toString());
				tag.setCreatedDate(new Date(System.currentTimeMillis()));
				tag.setLastModified(new Date(System.currentTimeMillis()));
				tag.setUser(tag.getUser());
				return (tagDAO.save(tag) == 1) ? true : false;
			}
		}
		return false;
	}

	@Override
	public Tag findTagById(String id) {
		return tagDAO.findTagById(id);
	}

	@Override
	public boolean updateTag(Tag tag) {
		return tagDAO.updateTag(tag);
	}

	@Override
	public List<Tag> listAllTag() {
		List<Tag> tags = tagDAO.listAllTag();
		return tags;
	}

	@Override
	public boolean deleteTagById(String id) {
		return tagDAO.deleteTagById(id);
	}
}
