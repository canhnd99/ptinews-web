package dao.impl;

import java.util.List;

import dao.IUserDAO;
import model.User;
import model.mapper.impl.UserMapper;

public class UserDAO extends BaseDAO<User> implements IUserDAO {
	
	@Override
	public List<User> findAll() {
		StringBuilder sql = new StringBuilder("SELECT id, username, password, salt, email,");
		sql.append(" isAdmin, status, created_date, last_modified");
		sql.append(" FROM tbl_user");
		return find(sql.toString(), new UserMapper());
	}

	@Override
	public int save(User user) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_user");
		sql.append(" (id, username, password, salt, email,");
		sql.append(" isAdmin, status, created_date, last_modified)");
		sql.append(" VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
		return insert(sql.toString(), user.getId(), user.getUsername(), user.getPassword(), user.getSalt(),
				user.getEmail(), user.getIsAdmin(), user.getStatus(), user.getCreatedDate(), user.getLastModified());
	}

	@Override
	public User findOneByEmail(User user) {
		StringBuilder sql = new StringBuilder("SELECT id, username, password, salt, email,");
		sql.append(" isAdmin, status, created_date, last_modified");
		sql.append(" FROM tbl_user WHERE email = ?");
		List<User> users = find(sql.toString(), new UserMapper(), user.getEmail());
		return (users.size() > 0) ? users.get(0) : null;
	}

	@Override
	public User findOneById(User user) {
		StringBuilder sql = new StringBuilder("SELECT id, username, password, salt, email,");
		sql.append(" isAdmin, status, created_date, last_modified");
		sql.append(" FROM tbl_user WHERE id = ?");
		List<User> users = find(sql.toString(), new UserMapper(), user.getId());
		return (users.size() > 0) ? users.get(0) : null;
	}

	@Override
	public boolean deleteUser(User user) {
		StringBuilder sql = new StringBuilder("DELETE FROM tbl_user WHERE id = ?");
		return update(sql.toString(), user.getId());
	}

	@Override
	public boolean updateUser(User user) {
		StringBuilder sql = new StringBuilder("UPDATE tbl_user");
		sql.append(" SET username=?, password=?, salt=?, email=?, isAdmin=?,");
		sql.append(" status=?, created_date=?, last_modified=?");
		sql.append(" WHERE id=?");
		return update(sql.toString(), user.getUsername(), user.getPassword(), user.getSalt(),
				user.getEmail(), user.getStatus(), user.getCreatedDate(), user.getLastModified(),
				user.getId());
	}
}
