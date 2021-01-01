package dao;

import java.util.List;

import model.Article;
import model.Category;

public interface IArticleDAO {
	List<Article> findAll();
	List<Article> findByTitle(String keyword);
	Article findOne(Article article);
	List<Article> findByEvent();
	int save(Article article);
	boolean deleteArticle(String articleId);
	boolean updateArticle(Article article);
	List<Article> getLastestArticle(int quantity, int offset);
	List<Article> getEventArticle(int quantity);
	List<Article> getStickyArticle(int quantity);
	List<Article> getArticleByCategoryId(Category cat, int quantity);
	
}
