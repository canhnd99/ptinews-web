package dao;

import model.User;

public interface IUserDAO {
	void save(User user);

	User findOneByEmail(User user);

	User findOneById(String id);
}
