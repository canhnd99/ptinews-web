package utils;

import com.google.gson.Gson;

import model.ArticleModel;
import model.CommentModel;
import model.UserModel;

public class ObjectConverter {
	
	private Gson gson = null;
	
	public ObjectConverter() {
		gson = new Gson();
	}

	public UserModel jsonToUser(String json) {
		UserModel user = gson.fromJson(json, UserModel.class);
		return user;
	}

	public ArticleModel[] jsonToListArticles(String json) {
		ArticleModel[] arr = gson.fromJson(json, ArticleModel[].class);
		return arr;
	}
	
	public CommentModel[] jsonToListComments(String json) {
		CommentModel[] arr = gson.fromJson(json, CommentModel[].class);
		return arr;
	}
}
