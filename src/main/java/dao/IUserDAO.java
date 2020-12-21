package dao;

import model.User;

public interface IUserDAO {
	User checkLogin(String email, String password);

	void save(User user);

	User findOneByEmail(User user);

	User findOneById(String id);
}
