package dao;

import java.util.List;

import model.User;

public interface IUserDAO {
	
	List<User> findAll();
	
	int save(User user);

	User findByEmail(String email);

	User findOneById(String id);
	
	boolean delete(User user);
	
	boolean update(User user);
}
