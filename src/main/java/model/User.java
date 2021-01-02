package model;

public class User extends Base<User> {
	
	private String username;
	private String password;
	private String salt;
	private String email;
	private boolean isAdmin;
	private String status;
	
	public User() {
	}
	
	public User(String username, String password, String salt, String email,
			boolean isAdmin, String status) {
		this.username = username;
		this.password = password;
		this.salt = salt;
		this.email = email;
		this.isAdmin = isAdmin;
		this.status = status;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean getIsAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
