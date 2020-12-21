package utils;

import com.google.gson.Gson;

import model.Article;
import model.Comment;
import model.User;

public class ObjectConverter {
	
	private Gson gson = null;
	
	public ObjectConverter() {
		gson = new Gson();
	}

	public User jsonToUser(String json) {
		User user = gson.fromJson(json, User.class);
		return user;
	}

	public Article[] jsonToListArticles(String json) {
		Article[] arr = gson.fromJson(json, Article[].class);
		return arr;
	}
	
	public Comment[] jsonToListComments(String json) {
		Comment[] arr = gson.fromJson(json, Comment[].class);
		return arr;
	}
}
