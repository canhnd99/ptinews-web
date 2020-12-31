package dao.impl;

import dao.ITagArticleDAO;
import model.TagArticle;

public class TagArticleIDAO extends BaseDAO<TagArticle> implements ITagArticleDAO {

	@Override
	public int save(TagArticle tagArticle) {
		StringBuilder sql = new StringBuilder("INSERT INTO tbl_tag_article (id, tbl_article_id, tbl_tag_id)");
		sql.append(" VALUES (?, ?, ?)");
		return insert(sql.toString(), tagArticle.getId(), tagArticle.getArticle().getId(), tagArticle.getTag().getId());
	}

}
