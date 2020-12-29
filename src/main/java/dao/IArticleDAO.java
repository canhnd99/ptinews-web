package dao;

import java.util.List;

import model.Article;

public interface IArticleDAO {
	List<Article> findAll();
	List<Article> findByTitle(Article article);
	Article findOne(Article article);
	List<Article> findByEvent();
	int save(Article article);
	boolean deleteArticle(Article article);
	boolean updateArticle(Article article);
}
