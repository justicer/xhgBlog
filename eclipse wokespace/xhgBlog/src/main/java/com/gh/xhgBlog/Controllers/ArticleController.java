package com.gh.xhgBlog.Controllers;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.gh.xhgBlog.pojo.Article;
import com.gh.xhgBlog.service.ArticleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	// 文章详情信息
	@RequestMapping(value="/ToArticleInfo")
	public String ToArticleInfo(HttpServletRequest request,HttpServletResponse response,Model model,Integer articleId) {
		Article article = articleService.findArticle(articleId);
		
		// 记录用户点击量
		article.setLookCount(article.getLookCount() +1);
		articleService.updateArticle(article);
		
		List<Article> list = articleService.findPreAndNextArticle(articleId);
		for(int i=0;i<list.size();i++) {
			if(list.size() == 1) {
				if(list.get(i).getId() < articleId) {
					model.addAttribute("preArticle", list.get(i));
					model.addAttribute("nextArticle", "这是最后一篇");
					model.addAttribute("articleId", list.get(i).getId());
				}else {
					model.addAttribute("preArticle", "这是第一篇");
					model.addAttribute("nextArticle", list.get(i));
					model.addAttribute("articleId", list.get(i).getId());
				}
			}else {
				model.addAttribute("preArticle", list.get(0));
				model.addAttribute("nextArticle", list.get(1));
			}
		}
		List<Article> listArt =articleService.findLookCountArticle();
		model.addAttribute("listArt", listArt);
		model.addAttribute("list", list);
		model.addAttribute("article", article);
		return "ArticleInfo";
	}
	
	// 文章主页
	@RequestMapping(value="/main")
	public String main(@RequestParam(required=true,defaultValue="1")Integer page,HttpServletRequest request,HttpServletResponse response,Model model) {
		PageHelper.startPage(page, 10); 
		List<Article> list = articleService.findAllArticle();
		PageInfo<Article> pageInfo=new PageInfo<Article>(list);
		List<Article> listArt =articleService.findLookCountArticle();
		model.addAttribute("listArt", listArt);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("list", list);
		return "main";
	}
	
	// 文章主页 用于分页
	@RequestMapping(value="/mainList")
	@ResponseBody
	public Map<String, Object> mainList(@RequestParam(required=true,defaultValue="2")Integer page,HttpServletRequest request,HttpServletResponse response,Model model) {
		PageHelper.startPage(page, 10); 
		List<Article> list = articleService.findAllArticle();
		PageInfo<Article> pageInfo=new PageInfo<Article>(list);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("list", list);
		Map<String, Object> map = new HashMap<String, Object>();
		List<Article> listArt =articleService.findLookCountArticle();
		model.addAttribute("listArt", listArt);
        map.put("list", list);
        map.put("pageInfo", pageInfo);
		return map;
	}
	
	// 跳转增添文章页面
	@RequestMapping(value="/ToAddArticle")
	public String ToAddArticle() {
		return "addArticle";
	}
	
	// 新增文章
	@RequestMapping(value="/addArticle")
	@ResponseBody
	public String addArticle(String headTitle,String article_area) {
		Article article =new Article();
		article.setHeadTitle(headTitle);
		article.setContent(article_area);
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String strsystime = sf.format(System.currentTimeMillis());//系统当前时间
        //String strsysnanotime = sf.format(System.nanoTime());//系统当前时间
		article.setTimeDate(strsystime);
		articleService.insert(article);
		return null;
	}
	
	// 调用点赞功能
	@RequestMapping(value="/playGod")
	@ResponseBody
	public String playGod(Boolean flag,Integer articleId) {
		Article article = articleService.findArticle(articleId);
		int count = article.getGodCount();
		if(flag) {
			count =count + 1;
			article.setGodCount(count);
		}else {
			count =count - 1;
			article.setGodCount(count);
		}
		articleService.updateArticle(article);
		return null;
	}
	
}
