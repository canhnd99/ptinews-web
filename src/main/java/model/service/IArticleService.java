package model.service;

import java.util.List;

import model.Article;

public interface IArticleService {
	List<Article> findAll();
	Article findOne(String id);
	List<Article> search(String title);
	List<Article> findByEvent();
	boolean addNewArticle(Article article);
	boolean deleteArticle(String encodedId);
	boolean updateArticle(Article article, String encodedId);
}
