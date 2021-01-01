package model;

public class Article extends Base<Article> {
	
	private String title;
	private String description;
	private String content;
	private String thumnail;
	private String status;
	private String event;
	private String sticky;
	private int liked;
	private User user;
	private Category category;
	private String tagName;
	private String categoryName;
	
	public Article() {
	}
	
	public Article(String id) {
		super.setId(id);
	}

	public Article(String title, String description, String content, String thumnail,
			String status, String tag, String event, String sticky, int liked, User user, Category category) {
		this.title = title;
		this.description = description;
		this.content = content;
		this.thumnail = thumnail;
		this.status = status;
		this.event = event;
		this.sticky = sticky;
		this.liked = liked;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getSticky() {
		return sticky;
	}

	public void setSticky(String sticky) {
		this.sticky = sticky;
	}
	
	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
		this.liked = liked;
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
	
	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
}
