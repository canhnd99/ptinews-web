package dao;

import java.util.List;

import model.User;

public interface IUserDAO {
	
	List<User> findAll();
	
	int save(User user);

	User findOneByEmail(User user);

	User findOneById(User user);
	
	boolean deleteUser(User user);
	
	boolean updateUser(User user);
}
