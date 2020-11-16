package controller;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = { "/signup" })
public class SignupController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	HttpURLConnection conn=null;
	
	public SignupController() {
		getUrlConnection();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
	
	private void getUrlConnection() {
		try {
			URL url = new URL("http://localhost:8080/ptinews/api/v1/signin");
			conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("POST");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
