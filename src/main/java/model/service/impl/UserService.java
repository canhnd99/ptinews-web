package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.IUserDAO;
import dao.impl.UserDAO;
import model.User;
import model.service.IUserService;
import utils.PasswordUtil;

public class UserService implements IUserService {
	
	IUserDAO userDao;
	
	public UserService() {
		userDao = new UserDAO();
	}
	
	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public User checkLogin(User user) {
		User clientUser = user;
		if (user.getEmail() != null && !user.getEmail().isEmpty()) {
			User dbUser = findOneByEmail(user);
			if (dbUser != null) {
				String salt = dbUser.getSalt();
				String userPassword = clientUser.getPassword();
				String dbHasedPassword = dbUser.getPassword();
				String userHasedPassword = PasswordUtil.getPassword(userPassword.toCharArray(), salt.getBytes());
				if (dbHasedPassword.equals(userHasedPassword)) {
					return dbUser;
				}
			}
		}
		return null;
	}

	@Override
	public boolean addUser(User user) {
		String salt = PasswordUtil.getSalt();
		String hasedPassword = PasswordUtil.getPassword(user.getPassword().toCharArray(), salt.getBytes());

		user.setId(UUID.randomUUID().toString());
		user.setSalt(salt);
		user.setPassword(hasedPassword);
		user.setAdmin(false);
		user.setStatus(true);
		user.setCreatedDate(new Date(System.currentTimeMillis()));
		user.setLastModified(new Date(System.currentTimeMillis()));

		if (user.getId() != null && user.getEmail() != null && user.getPassword() != null) {
			if (findOneByEmail(user) == null) {
				return (userDao.save(user) == 1) ? true : false;
			}
		}
		return false;
	}

	@Override
	public User findOneByEmail(User user) {
		user = userDao.findOneByEmail(user);
		return (user != null) ? user : null;
	}

	@Override
	public User findOneById(User user) {
		return userDao.findOneById(user);
	}
}
