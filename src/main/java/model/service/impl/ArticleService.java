package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.IArticleDAO;
import dao.impl.ArticleDAO;
import model.Article;
import model.service.IArticleService;
import model.service.ICategoryService;
import model.service.IUserService;
import utils.ImagePath;

public class ArticleService implements IArticleService {

	IArticleDAO articleDAO;
	IUserService userService;
	ICategoryService categoryService;

	public ArticleService() {
		articleDAO = new ArticleDAO();
		userService = new UserService();
		categoryService = new CategoryService();
	}

	@Override
	public List<Article> findAll() {
		return articleDAO.findAll();
	}

	@Override
	public Article findOne(Article article) {
		return articleDAO.findOne(article);
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
	public boolean add(Article article) {
		if (article != null) {
			if (article.getUser() != null && article.getCategory() != null && article.getTitle() != null
					&& !article.getTitle().isEmpty()) {
				article.setId(UUID.randomUUID().toString());
				article.setThumnail(ImagePath.ARTICLE_ROOT_PATH + article.getThumnail());
				if(article.getEvent() == null) {
					article.setEvent("unchecked");
				}
				if(article.getSticky() == null) {
					article.setSticky("unchecked");
				}
				if(article.getEvent() == null && article.getSticky() == null) {
					article.setEvent("unchecked");
					article.setSticky("unchecked");
				}
				article.setCreatedDate(new Date(System.currentTimeMillis()));
				article.setLastModified(new Date(System.currentTimeMillis()));
				return (articleDAO.save(article) == 1) ? true : false;
			}
		}
		return false;
	}

	@Override
	public boolean delete(Article article) {
		return false;
	}

	@Override
	public boolean update(Article article) {
		if (article != null) {
			if (article.getUser() != null && article.getCategory() != null && article.getTitle() != null
					&& !article.getTitle().isEmpty()) {
				article.setLastModified(new Date(System.currentTimeMillis()));
				return (articleDAO.updateArticle(article) == true) ? true : false;
			}
		}
		return false;
	}
}
