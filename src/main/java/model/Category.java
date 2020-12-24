package model;

public class Category extends Base<Category> {
	
	private String name;
	private String description;
	private String slug;
	private String thumnail;
	
	public Category() {
	}
	
	public Category(String name, String description, String slug, String thumnail) {
		this.name = name;
		this.description = description;
		this.slug = slug;
		this.thumnail = thumnail;
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

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getThumnail() {
		return thumnail;
	}

	public void setThumnail(String thumnail) {
		this.thumnail = thumnail;
	}
}
