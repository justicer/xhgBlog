package com.gh.xhgBlog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gh.xhgBlog.dao.ArticleDao;
import com.gh.xhgBlog.pojo.Article;
import com.gh.xhgBlog.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleDao articleDao;
	
	@Override
	public List<Article> findAllArticle() {
		// TODO Auto-generated method stub
		return articleDao.findAllArticle();
	}

	@Override
	public Article findArticle(Integer id) {
		// TODO Auto-generated method stub
		return articleDao.findArticle(id);
	}

	@Override
	public void updateArticle(Article article) {
		// TODO Auto-generated method stub
		articleDao.updateArticle(article);
	}

	@Override
	public void deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		articleDao.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(Article article) {
		// TODO Auto-generated method stub
		articleDao.insert(article);
	}

	@Override
	public List<Article> likeQueryArticle(String ArticleInfo) {
		// TODO Auto-generated method stub
		return articleDao.likeQueryArticle(ArticleInfo);
	}

	@Override
	public List<Article> findPreAndNextArticle(Integer id) {
		// TODO Auto-generated method stub
		return articleDao.findPreAndNextArticle(id);
	}

	@Override
	public List<Article> findLookCountArticle() {
		// TODO Auto-generated method stub
		return articleDao.findLookCountArticle();
	}

}
