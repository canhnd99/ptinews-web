package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import utils.DataJSON;
import utils.HttpUtil;
import utils.ObjectConverter;

@WebServlet(urlPatterns = { "/admin/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ObjectConverter objectConverter;
	
	public LoginController() {
		objectConverter = new ObjectConverter();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			User user = HttpUtil.of(req.getReader()).toModel(User.class);
			String api = "http://localhost:8080/admin/api/v1/login";
	        String json = DataJSON.getJSONData(api, "POST");
			user = objectConverter.jsonToUser(json);
			System.out.println(user.getEmail());
			req.setAttribute("user", user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
	}
	
}
