package dao.impl;

import java.util.List;

import dao.ITagDAO;
import model.Tag;
import model.mapper.impl.TagMapper;

public class TagDAO extends BaseDAO<Tag> implements ITagDAO {

	@Override
	public int save(Tag tag) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_tag (id, name, created_date, last_modified, tbl_user_id)");
		sql.append(" VALUES (?, ?, ?, ?, ?)");
		return insert(sql.toString(), tag.getId(), tag.getName(), tag.getCreatedDate(),
				tag.getLastModified(), tag.getUser().getId());
	}

	@Override
	public Tag findTagByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * from tbl_tag WHERE name = ?");
		List<Tag> list = find(sql.toString(), new TagMapper(), name);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public Tag findTagById(String id) {
		StringBuilder sql = new StringBuilder("SELECT * from tbl_tag WHERE id = ?");
		List<Tag> list = find(sql.toString(), new TagMapper(), id);
		if (list.size() > 0)
			return list.get(0);
		return null;
	}

	@Override
	public boolean updateTag(Tag tag) {
		StringBuilder sql = new StringBuilder("UPDATE tbl_tag SET name = ?, last_modified = ? WHERE id = ?");
		int rs = insert(sql.toString(), tag.getName(), tag.getLastModified(), tag.getId());
		return rs > 0;
	}

	@Override
	public List<Tag> listAllTag() {
		StringBuilder sql = new StringBuilder("SELECT * FROM tbl_tag");
		List<Tag> tags = find(sql.toString(), new TagMapper());
		return tags;
	}

	@Override
	public boolean deleteTagById(String id) {
		StringBuilder sql = new StringBuilder("DELETE FROM tbl_tag WHERE (id = ?);");
		int rs = insert(sql.toString(), id);
		return rs > 0;
	}
}
