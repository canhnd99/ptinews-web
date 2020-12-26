package model.mapper.impl;

import java.sql.ResultSet;

import model.Tag;
import model.mapper.RowMapper;

public class TagMapper implements RowMapper<Tag> {

	@Override
	public Tag mapRow(ResultSet rs) {
		
		Tag tag = new Tag();
		
		try {
			tag.setId(rs.getString("id"));
			tag.setName(rs.getString("name"));
			tag.setLastModified(rs.getDate("last_modified"));
			tag.setCreatedDate(rs.getDate("created_date"));
			tag.setUser_id(rs.getString("tbl_user_id"));
			
			return tag;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
}
