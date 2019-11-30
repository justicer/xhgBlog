package com.gh.xhgBlog.dao;

import java.util.List;

import com.gh.xhgBlog.pojo.Article;

public interface ArticleDao {
	
	List<Article> findAllArticle();
	
	Article findArticle(Integer id);
	
	List<Article> findPreAndNextArticle(Integer id);
	
	void updateArticle(Article article);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(Article article);

	List<Article> likeQueryArticle(String ArticleInfo);
}
