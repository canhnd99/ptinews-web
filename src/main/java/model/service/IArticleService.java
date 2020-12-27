package model.service;

import java.util.List;

import model.Article;

public interface IArticleService {
	List<Article> findAll();
	Article findOne(Article article);
	List<Article> search(Article article);
	List<Article> findByEvent();
	boolean addNewArticle(Article article);
	boolean deleteArticle(Article article);
	boolean updateArticle(Article article, String encodedId);
}
