<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文章详情</title>
<link href="<%=basePath%>/resources/css/base.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/m.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/common.css" rel="stylesheet">
<link rel='stylesheet' href='<%=basePath%>/resources/css/reset.css' type='text/css' media='all' />
<link rel='stylesheet' href='<%=basePath%>/resources/css/style.css' type='text/css' media='all' />
<script type="text/javascript" src="<%=basePath%>/resources/js/jquery-2.1.1.min.js"></script>
<script src="<%=basePath%>/resources/js/comm.js"></script>
<script type='text/javascript' src='<%=basePath%>/resources/js/lmlblog.js'></script> 
<style type="text/css">

#abianqian:hover { 
color:#FF00FF; 
text-decoration:none; 
} 
 
</style>

</head>
<body>

<header id="header">
<div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="<%=basePath%>/article/main">小恒哥的个人博客</a></div>
    <nav>
    </nav>
  </div>
</header>

<!--top end-->

<article> 
  <!--lbox begin-->
  <div class="lbox">
    <div class="content_box whitebg">
      <h1 class="con_tilte">${article.headTitle }</h1>
      <p class="bloginfo"><i class="avatar"><img src="<%=basePath%>/resources/images/网页logo.png" style="margin-left: -12px;margin-top: -2px;width: 215%;"></i><span>小本书籍</span><span>${article.timeDate }</span><span>阅读(${article.lookCount })</span></p>
      <div class="con_text">
        <p>${article.content }</p>
        <p class="share"><b>转载：</b>感谢您对小本书籍个人博客网站平台的认可，以及对我们原创作品以及文章的青睐，非常欢迎各位朋友分享到个人站长或者朋友圈，但转载请说明文章出处“来源小本书籍个人博客”。</p>
        <p ><span class="diggit" ><a id="god">很赞哦！(${article.godCount })</a></span></p>
        <div class="nextinfo">
        
        <c:if test="${list.size() == 2 }" >
	      <p>上一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${preArticle.id }" style="text-decoration: none;" id="abianqian">${preArticle.headTitle }</a></p>
          <p>下一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${nextArticle.id }" style="text-decoration: none;" id="abianqian">${nextArticle.headTitle }</a></p>
		</c:if>
		<c:if test="${list.size() < 2 }" >
			<c:if test="${articleId < article.id*1 }">
		      <p>上一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${preArticle.id }" style="text-decoration: none;" id="abianqian">${preArticle.headTitle }</a></p>
	          <p>下一篇：<a href ="javascript:return false;" style="color:#b0b0b0;text-decoration: none;">${nextArticle }</a></p>
			</c:if>
			<c:if test="${articleId > article.id*1 }" >
		      <p>上一篇：<a href ="javascript:return false;" style="color:#b0b0b0;text-decoration: none;">${preArticle }</a></p>
	          <p>下一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${nextArticle.id }" style="text-decoration: none;" id="abianqian">${nextArticle.headTitle }</a></p>
			</c:if>
		</c:if>
		
        </div>
      </div>
    </div>
    <div class="whitebg">
      <h2 class="htitle">相关文章</h2>
      <ul class="otherlink">
      
      <c:if test="${listArt.size() <= 4 }" >
      	<c:forEach items="${listArt}" var="article">
	      	<li><a href="<%=basePath%>/article/ToArticleInfo?articleId=${article.id }" title="${article.headTitle }">${article.headTitle }</a></li>
      	</c:forEach>
	  </c:if>
	  <c:if test="${listArt.size() > 4 }" >
      	<li><a href="<%=basePath%>/article/ToArticleInfo?articleId=${listArt[0].id }" title="${listArt[0].headTitle }">${listArt[0].headTitle }</a></li>
      	<li><a href="<%=basePath%>/article/ToArticleInfo?articleId=${listArt[1].id }" title="${listArt[1].headTitle }">${listArt[1].headTitle }</a></li>
      	<li><a href="<%=basePath%>/article/ToArticleInfo?articleId=${listArt[2].id }" title="${listArt[2].headTitle }">${listArt[2].headTitle }</a></li>
      	<li><a href="<%=basePath%>/article/ToArticleInfo?articleId=${listArt[3].id }" title="${listArt[3].headTitle }">${listArt[3].headTitle }</a></li>
	  </c:if>
      </ul>
    </div>

    <!-- <div class="whitebg gbook">
      <h2 class="htitle">文章评论</h2>
      <ul>
      </ul>
    </div> -->
  </div>
  
  <!--  右侧 公共部分 -->
  <%@include file="/WEB-INF/jsp/common.jsp"%>
  
</article>
<footer>
  <a href="#">
  <div class="top"></div>
  </a> 
</footer>
</body>
<script language="javascript">

// 判断用户点赞和取消点赞
var flag = false;
$("#god").click(function(){
	var count = ${article.godCount}+1;
	var articleId = ${article.id};
	if(!flag){
		var godText = $("#god").text("很赞哦！("+count+")");
		flag = true;
	}else{
		var count = count-1;
		var godText = $("#god").text("很赞哦！("+count+")");
		flag = false
	}
	
	$.ajax({
        url:"<%=basePath%>/article/playGod",
        type:"POST",
        data:{flag:flag,articleId:articleId},
        success :function(result){
       }
   	});
	
});

	
	
</script>
</html>