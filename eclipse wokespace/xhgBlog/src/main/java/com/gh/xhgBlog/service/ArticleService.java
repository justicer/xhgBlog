package com.gh.xhgBlog.service;

import java.util.List;

import com.gh.xhgBlog.pojo.Article;


public interface ArticleService {
	List<Article> findAllArticle();
	
	Article findArticle(Integer id);
	
	List<Article> findPreAndNextArticle(Integer id);
	
	List<Article> findLookCountArticle();
	
	void updateArticle(Article article);
	
	void deleteByPrimaryKey(Integer id);
	
	void insert(Article article);

	List<Article> likeQueryArticle(String ArticleInfo);
}
