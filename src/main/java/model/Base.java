package model;

import java.sql.Date;

public class Base<T> {

	private String id;
	private Date createdDate;
	private Date lastModified;

	public Base() {
	}

	public Base(String id, Date createdDate, String createdBy, Date lastModified) {
		this.id = id;
		this.createdDate = createdDate;
		this.lastModified = lastModified;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getLastModified() {
		return lastModified;
	}

	public void setLastModified(Date lastModified) {
		this.lastModified = lastModified;
	}
}
