package model;

public class CommentModel extends BaseModel<CommentModel> {
	
	private String content;
	
	public CommentModel() {
	}

	public CommentModel(String content) {
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
