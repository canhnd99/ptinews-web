package model.service.impl;

import java.util.UUID;

import dao.ITagArticleDAO;
import dao.impl.TagArticleIDAO;
import model.TagArticle;
import model.service.ITagArticleService;

public class TagArticleService implements ITagArticleService {
	
	ITagArticleDAO tagArticleDAO;
	
	public TagArticleService() {
		tagArticleDAO = new TagArticleIDAO();
	}

	@Override
	public boolean save(TagArticle tagArticle) {
		if(tagArticle != null) {
			tagArticle.setId(UUID.randomUUID().toString());
			return (tagArticleDAO.save(tagArticle) == 1) ? true : false;
		}
		return false;
	}
}
