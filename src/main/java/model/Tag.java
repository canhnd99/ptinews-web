package model;

public class Tag extends Base<Tag> {

	private String name;
	private User user;

	public Tag() {
	}

	public Tag(String name, User user) {
		this.name = name;
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
