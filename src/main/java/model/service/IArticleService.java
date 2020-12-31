package model.service;

import java.util.List;

import model.Article;

public interface IArticleService {
	List<Article> findAll();
	Article findOne(Article article);
	List<Article> search(String keyword);
	List<Article> findByEvent();
	boolean add(Article article);
	boolean delete(String articleId);
	boolean update(Article article);
}
