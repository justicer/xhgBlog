package com.gh.xhgBlog.pojo;

public class Article {

	private int id;
	private String headTitle;
	private String content;
	private String timeDate;
	private int godCount;
	private int lookCount;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHeadTitle() {
		return headTitle;
	}

	public void setHeadTitle(String headTitle) {
		this.headTitle = headTitle;
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

	public int getGodCount() {
		return godCount;
	}

	public void setGodCount(int godCount) {
		this.godCount = godCount;
	}

	public int getLookCount() {
		return lookCount;
	}

	public void setLookCount(int lookCount) {
		this.lookCount = lookCount;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", headTitle=" + headTitle + ", content=" + content + ", timeDate=" + timeDate
				+ ", godCount=" + godCount + ", lookCount=" + lookCount + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + godCount;
		result = prime * result + ((headTitle == null) ? 0 : headTitle.hashCode());
		result = prime * result + id;
		result = prime * result + lookCount;
		result = prime * result + ((timeDate == null) ? 0 : timeDate.hashCode());
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
		Article other = (Article) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (godCount != other.godCount)
			return false;
		if (headTitle == null) {
			if (other.headTitle != null)
				return false;
		} else if (!headTitle.equals(other.headTitle))
			return false;
		if (id != other.id)
			return false;
		if (lookCount != other.lookCount)
			return false;
		if (timeDate == null) {
			if (other.timeDate != null)
				return false;
		} else if (!timeDate.equals(other.timeDate))
			return false;
		return true;
	}

	
	
}
