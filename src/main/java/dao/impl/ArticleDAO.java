package dao.impl;

import java.util.List;

import dao.IArticleDAO;
import model.Article;
import model.mapper.impl.ArticleMapper;
import utils.SystemConst;

public class ArticleDAO extends BaseDAO<Article> implements IArticleDAO {

	@Override
	public List<Article> findAll() {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article");
		return find(sql.toString(), new ArticleMapper());
	}

	@Override
	public Article findOne(Article article) {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article WHERE id = ?");
		List<Article> articles = find(sql.toString(), new ArticleMapper(), article.getId());
		return (articles.size() > 0) ? articles.get(0) : null;
	}

	@Override
	public List<Article> findByTitle(String keyword) {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article WHERE LIKE ?");
		List<Article> articles = find(sql.toString(), new ArticleMapper(), "%" + keyword + "%");
		return (articles.size() > 0) ? articles : null;
	}

	@Override
	public List<Article> findByEvent() {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, liked, created_date, last_modified, tbl_user_id, tbl_category_id");
		sql.append(" FROM tbl_article WHERE envent = " + SystemConst.CHECKED_EVENT);
		return find(sql.toString(), new ArticleMapper());
	}

	@Override
	public int save(Article article) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_article");
		sql.append(" (id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, liked, created_date, last_modified,");
		sql.append(" tbl_user_id, tbl_category_id)");
		sql.append(" VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		return insert(sql.toString(), article.getId(), article.getTitle(), article.getDescription(),
				article.getContent(), article.getThumnail(), article.getStatus(), article.getEvent(),
				article.getSticky(), article.getLiked(), article.getCreatedDate(), article.getLastModified(),
				article.getUser().getId(), article.getCategory().getId());
	}

	@Override
	public boolean deleteArticle(String articleId) {
		StringBuilder sql = new StringBuilder("DELETE FROM tbl_article WHERE id = ?");
		return update(sql.toString(), articleId);
	}

	@Override
	public boolean updateArticle(Article article) {
		StringBuilder sql = new StringBuilder("UPDATE tbl_article");
		sql.append(" SET title=?, description=?, content=?, thumnail=?, status=?,");
		sql.append(" event=?, sticky=?, liked=?, last_modified=?, tbl_user_id=?, tbl_category_id=?");
		sql.append(" WHERE id=?");
		return update(sql.toString(), article.getTitle(), article.getDescription(), article.getContent(),
				article.getThumnail(), article.getStatus(), article.getEvent(), article.getSticky(), article.getLiked(),
				article.getLastModified(), article.getUser().getId(), article.getCategory().getId(), article.getId());
	}
}
