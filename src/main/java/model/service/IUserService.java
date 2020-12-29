package model.service;

import java.util.List;

import model.User;

public interface IUserService {
	List<User> findAll();
	User checkLogin(User user);
	boolean add(User user);
	User findOneByEmail(User user);
	User findOneById(User user);
	boolean delete(User user);
	boolean update(User user);
}
