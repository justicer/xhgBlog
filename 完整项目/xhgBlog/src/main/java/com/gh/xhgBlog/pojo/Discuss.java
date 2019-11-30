package com.gh.xhgBlog.pojo;

public class Discuss {

	private int id;
	private String content;
	private String timeDate;
	private int user_id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTimeDate() {
		return timeDate;
	}
	public void setTimeDate(String timeDate) {
		this.timeDate = timeDate;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Discuss(int id, String content, String timeDate, int user_id) {
		super();
		this.id = id;
		this.content = content;
		this.timeDate = timeDate;
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "Discuss [id=" + id + ", content=" + content + ", timeDate=" + timeDate + ", user_id=" + user_id + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + id;
		result = prime * result + ((timeDate == null) ? 0 : timeDate.hashCode());
		result = prime * result + user_id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Discuss other = (Discuss) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (id != other.id)
			return false;
		if (timeDate == null) {
			if (other.timeDate != null)
				return false;
		} else if (!timeDate.equals(other.timeDate))
			return false;
		if (user_id != other.user_id)
			return false;
		return true;
	}
	
	
}
