package model.mapper.impl;

import java.sql.ResultSet;

import model.Tag;
import model.User;
import model.mapper.RowMapper;
import model.service.IUserService;
import model.service.impl.UserService;

public class TagMapper implements RowMapper<Tag> {

	IUserService userService;

	public TagMapper() {
		userService = new UserService();
	}

	@Override
	public Tag mapRow(ResultSet rs) {
		Tag tag = new Tag();
		try {
			if (rs.getString("id") != null) {
				tag.setId(rs.getString("id"));
			}
			if (rs.getString("name") != null) {
				tag.setName(rs.getString("name"));
			}
			if (rs.getDate("created_date") != null) {
				tag.setCreatedDate(rs.getDate("created_date"));
			}
			if (rs.getDate("last_modified") != null) {
				tag.setCreatedDate(rs.getDate("last_modified"));
			}
			if (rs.getString("tbl_user_id") != null) {
				User user = new User();
				user.setId(rs.getString("tbl_user_id"));
				user = userService.findOneById(user);
				tag.setUser(user);
			}
			return tag;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
