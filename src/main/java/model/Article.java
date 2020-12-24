package model;

public class Article extends Base<Article> {
	
	private String title;
	private String description;
	private String content;
	private String thumnail;
	private String slug;
	private User user;
	private Category category;
	
	public Article() {
	}

	public Article(String title, String description, String content, String thumnail,
			String slug, User user, Category category) {
		this.title = title;
		this.description = description;
		this.content = content;
		this.thumnail = thumnail;
		this.slug = slug;
		this.user = user;
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getThumnail() {
		return thumnail;
	}

	public void setThumnail(String thumnail) {
		this.thumnail = thumnail;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
}
