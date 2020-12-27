package model.service.impl;

import java.util.List;

import dao.IArticleDAO;
import dao.impl.ArticleDAO;
import model.Article;
import model.service.IArticleService;

public class ArticleService implements IArticleService {
	
	IArticleDAO articleDAO;
	
	public ArticleService() {
		articleDAO = new ArticleDAO();
	}

	@Override
	public List<Article> findAll() {
		return articleDAO.findAll();
	}

	@Override
	public Article findOne(Article article) {
		return null;
	}

	@Override
	public List<Article> search(Article article) {
		return null;
	}

	@Override
	public List<Article> findByEvent() {
		return null;
	}

	@Override
	public boolean addNewArticle(Article article) {
		return false;
	}

	@Override
	public boolean deleteArticle(Article article) {
		return false;
	}

	@Override
	public boolean updateArticle(Article article, String encodedId) {
		return false;
	}

}
