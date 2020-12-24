package model.service;

import model.User;

public interface IUserService {
	User checkLogin(User user);
	void addUser(User user);
	User findOneByEmail(User user);
	User findOneById(String id);
}
