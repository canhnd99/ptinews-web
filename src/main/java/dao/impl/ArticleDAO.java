package dao.impl;

import java.util.List;

import dao.IArticleDAO;
import model.Article;
import model.mapper.impl.ArticleMapper;

public class ArticleDAO extends BaseDAO<Article> implements IArticleDAO {

	@Override
	public List<Article> findAll() {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, slug, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article");
		return find(sql.toString(), new ArticleMapper());
	}

	@Override
	public Article findOne(Article article) {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, slug, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article WHERE id = ?");
		List<Article> articles = find(sql.toString(), new ArticleMapper(), article.getId());
		return (articles.size() > 0) ? articles.get(0) : null;
	}

	@Override
	public List<Article> findByTitle(Article article) {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, slug, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article WHERE LIKE ?");
		List<Article> articles = find(sql.toString(), new ArticleMapper(), "%"+article.getTitle()+"%");
		return (articles.size() > 0) ? articles : null;
	}

	@Override
	public List<Article> findByEvent() {
		return null;
	}
	
	@Override
	public boolean save(Article article) {
		return false;
	}

	@Override
	public boolean deleteArticle(Article article) {
		return false;
	}

	@Override
	public boolean updateArticle(Article article) {
		return false;
	}
}
