package model.service.impl;

import java.sql.Date;
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
	public User checkLogin(User user) {
		User clientUser = user;
		if (user.getEmail() != null && !user.getEmail().isEmpty()) {
			User dbUser = findOneByEmail(user);
			String salt = dbUser.getSalt();
			String userPassword = clientUser.getPassword();
			String dbHasedPassword = dbUser.getPassword();
			String userHasedPassword = PasswordUtil.getPassword(userPassword.toCharArray(), salt.getBytes());
			if (dbHasedPassword.equals(userHasedPassword)) {
				return dbUser;
			}
		}
		return null;
	}

	@Override
	public void addUser(User user) {
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
			if(findOneByEmail(user) == null) {
				userDao.save(user);
			}
		}
	}

	@Override
	public User findOneByEmail(User user) {
		return userDao.findOneByEmail(user);
	}

	@Override
	public User findOneById(String id) {
		return null;
	}
}
