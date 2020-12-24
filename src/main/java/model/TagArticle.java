package model;

public class TagArticle extends Base<TagArticle> {
	private Article article;
	private Tag tag;
	
	public TagArticle() {
	}
	
	public TagArticle(Article article, Tag tag) {
		this.article = article;
		this.tag = tag;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Tag getTag() {
		return tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}
}
