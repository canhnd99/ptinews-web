package model.mapper.impl;

import java.sql.ResultSet;

import model.Comment;
import model.mapper.RowMapper;


public class CommentMapper implements RowMapper<Comment> {

	@Override
	public Comment mapRow(ResultSet rs) {
		Comment comment = new Comment();
		try {
			comment.setId(rs.getString("id"));
			comment.setContent(rs.getString("content"));
			comment.setStatus(rs.getBoolean("status"));
			comment.setCreatedDate(rs.getDate("created_date"));
			comment.setLastModified(rs.getDate("last_modified"));
			return comment;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
