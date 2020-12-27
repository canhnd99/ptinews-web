package model.service;

import java.util.List;

import model.User;

public interface IUserService {
	List<User> findAll();
	User checkLogin(User user);
	boolean addUser(User user);
	User findOneByEmail(User user);
	User findOneById(User user);
}
