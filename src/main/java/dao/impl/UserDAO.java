package dao.impl;

import dao.IUserDAO;
import model.User;
import model.mapper.impl.UserMapper;

public class UserDAO extends BaseDAO<User> implements IUserDAO {

	@Override
	public void save(User user) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_user");
		sql.append(" (id, username, password, salt, email,");
		sql.append(" isAdmin, status, created_date, last_modified)");
		sql.append(" VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
		insert(sql.toString(), user.getId(), user.getUsername(), user.getPassword(), user.getSalt(),
				user.getEmail(), user.getIsAdmin(), user.getStatus(), user.getCreatedDate(), user.getLastModified());
	}

	@Override
	public User findOneByEmail(User user) {
		StringBuilder sql = new StringBuilder("SELECT id, username, password, salt, email,");
		sql.append(" isAdmin, status, created_date, last_modified");
		sql.append(" FROM tbl_user WHERE email = ?");
		int size = find(sql.toString(), new UserMapper(), user.getEmail()).size();
		return (size != 0) ? find(sql.toString(), new UserMapper(), user.getEmail()).get(0) : null;
	}

	@Override
	public User findOneById(String id) {
		StringBuilder sql = new StringBuilder("SELECT id, username, password, salt, email,");
		sql.append(" is_admin, status, created_date, created_by, last_modified");
		sql.append(" FROM tbl_user WHERE id = ?");
		return find(sql.toString(), new UserMapper(), id).get(0);
	}
}
