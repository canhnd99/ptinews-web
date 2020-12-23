package dao.impl;

import java.util.List;

import dao.IArticleDAO;
import model.Article;
import model.mapper.impl.ArticleMapper;

public class ArticleDAO extends BaseDAO<Article> implements IArticleDAO {

	@Override
	public List<Article> findAll() {
		StringBuilder sql = new StringBuilder("SELECT id, title, description, content, thumnail, status,");
		sql.append(" event, sticky, slug, liked, created_date, last_modified, tbl_category_id, tbl_user_id");
		sql.append(" FROM tbl_article");
		return find(sql.toString(), new ArticleMapper());
	}

	@Override
	public Article findOne(String id) {
		return null;
	}

	@Override
	public List<Article> findByTitle(String title) {
		return null;
	}

	@Override
	public List<Article> findByEvent() {
		return null;
	}
	
	@Override
	public boolean save(Article article, String username, String categoryName) {
		return false;
	}

	@Override
	public boolean deleteArticle(String id) {
		return false;
	}

	@Override
	public boolean updateArticle(Article article) {
		return false;
	}
}
