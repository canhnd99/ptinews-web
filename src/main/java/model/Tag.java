package model;

public class Tag extends Base<Tag> {

	private String name;
	private int status;
	private User user;

	public Tag() {
	}

	public Tag(String name, int status, User user) {
		this.name = name;
		this.status = status;
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
