package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ResourceBundle;

public class DAO {
	static ResourceBundle resourceBundle = ResourceBundle.getBundle("database");
	public static Connection cnt;

	public DAO() {
			
		if (cnt == null) {
			String dbUrl = resourceBundle.getString("url");
			String user = resourceBundle.getString("username");
			String password = resourceBundle.getString("password");
			try {
				Class.forName(resourceBundle.getString("driverName"));
				cnt = DriverManager.getConnection(dbUrl, user, password);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
