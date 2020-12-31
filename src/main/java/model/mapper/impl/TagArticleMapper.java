package model.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.Article;
import model.Tag;
import model.TagArticle;
import model.mapper.RowMapper;
import model.service.IArticleService;
import model.service.ITagService;
import model.service.impl.ArticleService;
import model.service.impl.TagService;

public class TagArticleMapper implements RowMapper<TagArticle> {

	IArticleService articleService;
	ITagService tagService;
	
	public TagArticleMapper() {
		articleService = new ArticleService();
		tagService = new TagService();
	}
	
	@Override
	public TagArticle mapRow(ResultSet rs) {
		TagArticle tagArticle = new TagArticle();
		
		try {
			if(rs.getString("id") != null) {
				tagArticle.setId(rs.getString("id"));
			}
			if(rs.getString("tbl_article_id") != null) {
				Article article = new Article();
				article.setId(rs.getString("tbl_article_id"));
				tagArticle.setArticle(articleService.findOne(article));
			}
			if(rs.getString("tbl_tag_id") != null) {
				Tag tag = new Tag();
				tag.setId(rs.getString("tbl_tag_id"));
				tagArticle.setTag(tagService.findTagById(tag.getId()));
			}
			return tagArticle;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
