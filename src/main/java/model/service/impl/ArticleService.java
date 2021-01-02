package model.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

import dao.IArticleDAO;
import dao.impl.ArticleDAO;
import model.Article;
import model.Category;
import model.Tag;
import model.TagArticle;
import model.service.IArticleService;
import model.service.ICategoryService;
import model.service.ITagArticleService;
import model.service.ITagService;
import model.service.IUserService;
import utils.SystemConst;

public class ArticleService implements IArticleService {

	IArticleDAO articleDAO;
	IUserService userService;
	ICategoryService categoryService;
	ITagService tagService;
	ITagArticleService tagArticleService;

	public ArticleService() {
		articleDAO = new ArticleDAO();
		userService = new UserService();
		categoryService = new CategoryService();
		tagService = new TagService();
		tagArticleService = new TagArticleService();
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
	public boolean add(Article article) {
		if (article != null) {
			if (article.getUser() != null && article.getCategory() != null 
					&& article.getTitle() != null && !article.getTitle().isEmpty()) {
				
				article.setId(UUID.randomUUID().toString());
				article.setThumnail(SystemConst.ARTICLE_ROOT_PATH + article.getThumnail());
				
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
				
				int isSaved = articleDAO.save(article);
				
				//add new tag_article after add an article.
				TagArticle tagArticle = new TagArticle();
				tagArticle.setArticle(article);
				Tag tag = tagService.findTagById(article.getTagName());
				tagArticle.setTag(tag);
				tagArticleService.save(tagArticle);
				
				return (isSaved == 1) ? true : false;
			}
		}
		return false;
	}

	@Override
	public boolean delete(String articleId) {
		return articleDAO.deleteArticle(articleId);
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
	
	@Override
	public List<Article> search(String keyword) {
		return articleDAO.findByTitle(keyword);
	}

	@Override
	public List<Article> findByEvent() {
		return articleDAO.findByEvent();
	}

	@Override
	public List<Article> getLastestArticle(int quantity, int offset) {
		return articleDAO.getLastestArticle(quantity, offset);
	}

	@Override
	public List<Article> getEventArticle(int quantity) {
		return articleDAO.getEventArticle(quantity);
	}

	@Override
	public List<Article> getStickyArticle(int quantity) {
		return articleDAO.getStickyArticle(quantity);
	}

	@Override
	public List<Article> getArticleByCategoryId(Category cat, int quantity) {
		return articleDAO.getArticleByCategoryId(cat, quantity);
	}

}
