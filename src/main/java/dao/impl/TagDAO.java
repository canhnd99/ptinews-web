package dao.impl;

import java.util.List;

import dao.ITagDAO;
import model.Tag;
import model.mapper.impl.TagMapper;

public class TagDAO extends BaseDAO<Tag> implements ITagDAO{

	@Override
	public boolean save(Tag tag) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Tag findTagByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * from tbl_tag WHERE name = ?");
		List<Tag> list = find(sql.toString(), new TagMapper(), name);
		
		if(list.size()>0) return list.get(0);
		
		return null;
		
	}

	@Override
	public Tag findTagById(String id) {
		StringBuilder sql = new StringBuilder("SELECT * from tbl_tag WHERE id = ?");
		List<Tag> list = find(sql.toString(), new TagMapper(), id);
		if(list.size()>0) return list.get(0);
		return null;
	}

	@Override
	public boolean updateTag(Tag tag) {
		//UPDATE `ptinewsdb_dev`.`tbl_tag` SET `name` = 'Tin tức news', `last_modified` = '2020-12-28' WHERE (`id` = '8b5ff41a-7342-449f-919d-9639f6571c9e');
		StringBuilder sql = new StringBuilder("UPDATE tbl_tag SET name = ?, last_modified = ? WHERE id = ?");
		int rs = insert(sql.toString(), tag.getName(), tag.getLastModified(), tag.getId());
		return rs > 0;
	}

	@Override
	public List<Tag> listAllTag() {
		
		StringBuilder sql = new StringBuilder("SELECT * FROM tbl_tag");
		List<Tag> tags = find(sql.toString(), new TagMapper(), "");
		return tags;
	}

	@Override
	public boolean deleteTagById(String id) {
		//DELETE FROM tbl_tag WHERE (id = d355c3dd-cb2f-46e1-a433-64320840ff0e);
		StringBuilder sql = new StringBuilder("DELETE FROM tbl_tag WHERE (id = ?);");
		int rs = insert(sql.toString(), id);
		return rs > 0;
	}

}
