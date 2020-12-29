package model;

public class Like extends Base<Like> {
	private User user;
	private Article article;
	
	public Like() {
	}
	
	public Like(User user, Article article) {
		this.user = user;
		this.article = article;
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
