package model.service;

import java.util.List;

import model.Article;
import model.Category;

public interface IArticleService {
	List<Article> findAll();
	Article findOne(Article article);
	List<Article> search(String keyword);
	List<Article> findByEvent();
	boolean add(Article article);
	boolean delete(String articleId);
	boolean update(Article article);
	List<Article> getEventArticle(int quantity);
	List<Article> getStickyArticle(int quantity);
	List<Article> getLastestArticle(int quantity, int offset);
	List<Article> getArticleByCategoryId(Category cat, int quantity);
}
