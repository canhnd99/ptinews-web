package model;

public class Comment extends Base<Comment> {
	
	private String content;
	private String status;
	private User user;
	private Article article;
	
	public Comment() { }

	public Comment(String content, String status, User user, Article article) {
		super();
		this.content = content;
		this.status = status;
		this.user = user;
		this.article = article;
	}

	public Comment(String content) {
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}
}
