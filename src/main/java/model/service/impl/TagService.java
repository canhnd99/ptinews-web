package model.service.impl;

import java.util.List;

import dao.impl.TagDAO;
import model.Tag;
import model.mapper.impl.TagMapper;
import model.service.ITagService;

public class TagService implements ITagService {
	
	private static TagDAO tagDAO;
	
	public TagService(){
		tagDAO = new TagDAO();
	}

	@Override
	public boolean checkExisted(String name) {
		Tag tag = tagDAO.findTagByName(name);
		return tag!=null;
	}

	@Override
	public void insertTag(Tag tag) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_tag");
		sql.append(" (id, name, created_date, last_modified, tbl_user_id) ");
		sql.append(" VALUES (?, ?, ?, ?, ?)");
		tagDAO.insert(sql.toString(), tag.getId(), tag.getName(), tag.getCreatedDate(), tag.getLastModified(), tag.getUser_id());
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
