package model.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.Article;
import model.mapper.RowMapper;


public class ArticleMapper implements RowMapper<Article> {

	@Override
	public Article mapRow(ResultSet rs) {
		Article entity = new Article();
		try {
			if(rs.getString("id") != null) {
				entity.setId(rs.getString("id"));
			}
			if(rs.getString("title") != null){
				entity.setTitle(rs.getString("title"));
			}
			if(rs.getString("description") != null) {
				entity.setDescription(rs.getString("description"));
			}
			if(rs.getString("content") != null) {
				entity.setContent(rs.getString("content"));
			}
			if(rs.getString("thumnail") != null) {
				entity.setThumnail(rs.getString("thumnail"));
			}
			if(rs.getBoolean("status")) {
				entity.setStatus(rs.getBoolean("status"));
			}
			if(rs.getString("slug") != null) {
				entity.setSlug(rs.getString("slug"));
			}
			if(rs.getDate("created_date") != null) {
				entity.setCreatedDate(rs.getDate("created_date"));
			}
			if(rs.getDate("last_modified") != null) {
				entity.setLastModified(rs.getDate("last_modified"));
			}
			return entity;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
