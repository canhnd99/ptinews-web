package model;

public class TagModel extends BaseModel<TagModel> {

	private String name;

	public TagModel() {
	}

	public TagModel(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
