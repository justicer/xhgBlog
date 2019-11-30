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
</head>

<body>

<header id="header">
<div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="<%=basePath%>/article/main">小恒哥的个人博客</a></div>
    <nav>
    </nav>
    <div class="searchico"></div>
  </div>
</header>
<div class="searchbox">
  <div class="search">
    <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
      <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onFocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onBlur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
      <input name="show" value="title" type="hidden">
      <input name="tempid" value="1" type="hidden">
      <input name="tbname" value="news" type="hidden">
      <input name="Submit" class="input_submit" value="搜索" type="submit">
    </form>
  </div>
  <div class="searchclose"></div>
</div>
<!--top end-->

<article> 
  <!--lbox begin-->
  <div class="lbox">
    <div class="content_box whitebg">
      <h1 class="con_tilte">${article.headTitle }</h1>
      <p class="bloginfo"><i class="avatar"><img src="<%=basePath%>/resources/images/headimg.jpg"></i><span>小本书籍</span><span>${article.timeDate }</span><span>109990人已围观</span></p>
      <div class="con_text">
        <p>${article.content }</p>
        <p class="share"><b>转载：</b>感谢您对小本书籍个人博客网站平台的认可，以及对我们原创作品以及文章的青睐，非常欢迎各位朋友分享到个人站长或者朋友圈，但转载请说明文章出处“来源小本书籍个人博客”。</p>
        <p ><span class="diggit" ><a id="god">很赞哦！(${article.godCount })</a></span></p>
        <div class="nextinfo">
        
        <c:if test="${list.size() == 2 }" >
	      <p>上一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${preArticle.id }">${preArticle.headTitle }</a></p>
          <p>下一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${nextArticle.id }">${nextArticle.headTitle }</a></p>
		</c:if>
		<c:if test="${list.size() < 2 }" >
			<c:if test="${articleId < article.id*1 }">
		      <p>上一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${preArticle.id }">${preArticle.headTitle }</a></p>
	          <p>下一篇：<a href ="javascript:return false;">${nextArticle }</a></p>
			</c:if>
			<c:if test="${articleId > article.id*1 }" >
		      <p>上一篇：<a href ="javascript:return false;">${preArticle }</a></p>
	          <p>下一篇：<a href="<%=basePath%>/article/ToArticleInfo?articleId=${nextArticle.id }">${nextArticle.headTitle }</a></p>
			</c:if>
		</c:if>
		
        </div>
      </div>
    </div>
    <div class="whitebg">
      <h2 class="htitle">相关文章</h2>
      <ul class="otherlink">
        <li><a href="/download/div/2018-04-22/815.html" title="html5个人博客模板《黑色格调》">html5个人博客模板《黑色格调》</a></li>
        <li><a href="/download/div/2018-04-18/814.html" title="html5个人博客模板主题《清雅》">html5个人博客模板主题《清雅》</a></li>
        <li><a href="/download/div/2018-03-18/807.html" title="html5个人博客模板《绅士》">html5个人博客模板《绅士》</a></li>
      </ul>
    </div>

    <div class="whitebg gbook">
      <h2 class="htitle">文章评论</h2>
      <ul>
      </ul>
    </div>
  </div>
   <div class="rbox">
    <div class="right-one-row layui-row pane-bg-radius">
         <div class="visit-img-box top-radius">
             <img src="<%=basePath%>/resources/images/headimgbg.jpg" class="top-radius"/>
         </div>
         <div class="headimg-box">
             <img src="<%=basePath%>/resources/images/headimg.jpg"/>
         </div>
         <div class="nickname layui-row row-align text-align-center">
             小本书籍
             <span><img src="<%=basePath%>/resources/images/man.png" height="32"width="32"/></span>
         </div>
         <div class="padding-hr layui-row common-padding-x">
             <div class="hr-line-div"></div>
         </div>
         <div class="mine-msg layui-row common-padding font-size1 font-color5">
             <div class="layui-row row-align">
                 <div class="msg-name layui-col-md3">Q Q ：</div>
                 <div class="msg-val layui-col-md9">601098245</div>
             </div>
             <div class="layui-row row-align">
                 <div class="msg-name layui-col-md3">职业 ：</div>
                 <div class="msg-val layui-col-md9">程序员</div>
          </div>
          <div class="layui-row row-align">
              <div class="msg-name layui-col-md3">现居 ：</div>
              <div class="msg-val layui-col-md9">河南省-商丘市</div>
          </div>
          <div class="layui-row row-align">
              <div class="msg-name layui-col-md3">Email ：</div>
              <div class="msg-val layui-col-md9">601098245@qq.com</div>
          </div>
      </div>
    
    
    
    <div class="whitebg paihang">
      <h2 class="htitle">点击排行</h2>
      <section class="topnews imgscale"><a href="/"><img src="<%=basePath%>/resources/images/h1.jpg"><span>6条网页设计配色原则,让你秒变配色高手</span></a></section>
      <ul>
        <li><i></i><a href="/">十条设计原则教你学会如何设计网页布局!</a></li>
        <li><i></i><a href="/">用js+css3来写一个手机栏目导航</a></li>
        <li><i></i><a href="/">6条网页设计配色原则,让你秒变配色高手</a></li>
        <li><i></i><a href="/">三步实现滚动条触动css动画效果</a></li>
        <li><i></i><a href="/">个人博客，属于我的小世界！</a></li>
        <li><i></i><a href="/">安静地做一个爱设计的女子</a></li>
        <li><i></i><a href="/">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a></li>
        <li><i></i><a href="/">做个人博客如何用帝国cms美化留言增加头像选择</a></li>
      </ul>
    </div>
    <div class="whitebg tuijian">
      <h2 class="htitle">站长推荐</h2>
      <section class="topnews imgscale"><a href="/"><img src="<%=basePath%>/resources/images/h2.jpg"><span>6条网页设计配色原则,让你秒变配色高手</span></a></section>
      <ul>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text01.jpg"></i>
          <p>十条设计原则教你学会如何设计网页布局!</p>
          </a></li>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text02.jpg"></i>
          <p>用js+css3来写一个手机栏目导航</p>
          </a></li>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text03.jpg"></i>
          <p>6条网页设计配色原则,让你秒变配色高手</p>
          </a></li>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text04.jpg"></i>
          <p>三步实现滚动条触动css动画效果</p>
          </a></li>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text05.jpg"></i>
          <p>个人博客，属于我的小世界！</p>
          </a></li>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text06.jpg"></i>
          <p>安静地做一个爱设计的女子</p>
          </a></li>
        <li><a href="/"><i><img src="<%=basePath%>/resources/images/text07.jpg"></i>
          <p>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</p>
          </a></li>
      </ul>
    </div>
    
  </div>
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