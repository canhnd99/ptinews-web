package model.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import model.mapper.RowMapper;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs) {
		User user = new User();
		try {
			if(rs.getString("id") != null) {
				user.setId(rs.getString("id"));
			}
			if(rs.getString("username") != null) {
				user.setUsername(rs.getString("username"));
			}
			if(rs.getString("password") != null) {
				user.setPassword(rs.getString("password"));
			}
			if(rs.getString("email") != null) {
				user.setEmail(rs.getString("email"));
			}
			if(rs.getString("salt") != null) {
				user.setSalt(rs.getString("salt"));
			}
			if(rs.getBoolean("isAdmin")) {
				user.setAdmin(rs.getBoolean("isAdmin"));
			}
			if(rs.getBoolean("status")) {
				user.setStatus(rs.getBoolean("status"));
			}
			if(rs.getDate("created_date") != null) {
				user.setCreatedDate(rs.getDate("created_date"));
			}
			if(rs.getDate("last_modified") != null) {
				user.setCreatedDate(rs.getDate("last_modified"));
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
