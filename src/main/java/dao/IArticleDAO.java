package dao;

import java.util.List;

import model.Article;

public interface IArticleDAO {
	List<Article> findAll();
	List<Article> findByTitle(String keyword);
	Article findOne(Article article);
	List<Article> findByEvent();
	int save(Article article);
	boolean deleteArticle(String articleId);
	boolean updateArticle(Article article);
}
