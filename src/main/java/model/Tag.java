package model;

public class Tag extends Base<Tag> {

	private String name;
	private String user_id;

	public Tag() {
	}

	public Tag(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "Tag [name=" + name + ", user_id=" + user_id + ", Id=" + getId() + ", createdDate="
				+ getCreatedDate() + ", LastModified=" + getLastModified() + "]";
	}
	
	
}
