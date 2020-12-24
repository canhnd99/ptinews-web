package dao;

import java.util.List;

import model.Article;

public interface IArticleDAO {
	List<Article> findAll();
	List<Article> findByTitle(String title);
	Article findOne(String id);
	List<Article> findByEvent();
	boolean save(Article article, String username, String categoryName);
	boolean deleteArticle(String id);
	boolean updateArticle(Article article);
}
