package test;

import java.util.List;

import model.User;
import model.service.IUserService;
import model.service.impl.UserService;

public class TESTMAIN {
	
	public static void main(String[] args) {
		IUserService userService = new UserService();
		List<User> users = userService.findAll();
		for(int i=0; i<users.size(); i++) {
			System.out.println(users.get(i).getEmail());
		}
	}
}
