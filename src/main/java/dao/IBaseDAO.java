package dao;

import java.util.List;

import model.mapper.RowMapper;

public interface IBaseDAO<T> {
	
	List<T> find(String sql, RowMapper<T> rowMapper, Object... parameters);

	boolean update(String sql, Object... parameters);
	
	int insert(String sql, Object... parameters);
	
	int count(String sql);
	
}
