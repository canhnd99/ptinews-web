package model;

public class Category extends Base<Category> {
	private String name;
	private String description;
	private String user_id; 
	
	public Category() {
		super();
	}
	
	public Category(String name, String description, String user_id) { //to insert new category
		super();
		this.name = name;
		this.description = description;
		this.user_id = user_id;
	}
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Category [id=" + super.getId() + ", name=" + name + ", description=" + description + ", created_date="
				+ super.getCreatedDate() + ", last_modified=" + super.getLastModified() + ", user_id=" + user_id + "]";
	}
	

}
