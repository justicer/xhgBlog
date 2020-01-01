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
<title>主页</title>

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
  </div>
  
  <%-- <div class="logo" style="float:right;margin-right:160px;"><a href="<%=basePath%>/article/ToAddArticle">写博客</a></div> --%>
  
  
</header>
<!--top end-->
<article> 
  <!--lbox begin-->
  <div class="lbox"> 
    <!--headline end-->
    <div class="clearblank"></div>
    <div class="whitebg bloglist">
      <h2 class="htitle">文章</h2>
      <ul id="ulId">
      	<c:forEach items="${list}" var="article">
	      	<li>
	          <h3 class="blogtitle"><a href="<%=basePath%>/article/ToArticleInfo?articleId=${article.id }" >${article.headTitle }</a></h3>
	          <p class="blogtext">${article.content } </p>
	          <p class="bloginfo"><i class="avatar"><img src="<%=basePath%>/resources/images/网页logo.png" style="margin-left: -12px;margin-top: -2px;width: 215%;"></i><span>小本书籍</span><span>${article.timeDate }</span><span>阅读(${article.lookCount })</span></p>
	          <a href="<%=basePath%>/article/ToArticleInfo?articleId=${article.id }" class="viewmore">阅读更多</a> 
            </li>
      	</c:forEach>
      </ul>
      <div id="ajax-load-posts">
        <button id="fa-loadmore" class="button button-more wow fadeInUp" data-wow-delay="0.3s" 
        data-home="true" data-paged="2" data-action="fa_load_postlist" data-total="4">加载更多</button>
      </div>
    </div>
    <!--bloglist end--> 
  </div>
  
  <!--  右侧 公共部分 -->
  <%@include file="/WEB-INF/jsp/common.jsp"%>
  
  
</article>
<footer>
  <a href="#">
  <div class="top"></div>
  </a> </footer>
</body>
<script language="javascript">

//  页面刷新，回到页面顶部
$('html ,body').animate({ scrollTop: -10 }, 300);


var page=1;
$("#fa-loadmore").click(function(){
	if(page != ${pageInfo.pages}){
		//定义我需要追加的html代码
	    var html="";
		var flag = true;
	    //页数加1
	    page=page+1;
	    //发送ajax请求
	    $.ajax({
	        url:"<%=basePath%>/article/mainList",
	        type:"POST",
	        dataType : "json",
	        data:{"page":page},
	        success :function(result){
	        	//成功返回信息时
	            //使用each遍历返回的列表的内容,样式什么的自己拼拼吧，和你页面加载的时候样式一样就好了，把内容改了就ok
	            for(var i=0;i<result.list.length;i++){
	            	
	            	 html=html+'<li>'+
	                 '<h3 class="blogtitle"><a href="<%=basePath%>/article/ToArticleInfo?articleId='+result.list[i].id+'">'+result.list[i].headTitle+'</a></h3>'+
	                 '<p class="blogtext">'+result.list[i].content +'</p>'+
	                 '<p class="bloginfo"><i class="avatar"><img src="<%=basePath%>/resources/images/网页logo.png" style="margin-left: -12px;margin-top: -2px;width: 215%;"></i><span>小本书籍</span><span>'+result.list[i].timeDate+'</span><span>阅读('+result.list[i].lookCount+')</span></p>'+
	                 '<a href="<%=basePath%>/article/ToArticleInfo?articleId='+result.list[i].id+'" class="viewmore">阅读更多</a></li>';
	               	
	            }
	        	
	        	// 如果每页加载的个数，大于获取到的内容条数，就说明全部数据已加载完，没有更多数据可以加载
	        	if(result.pageInfo.pages == result.pageInfo.pageNum){
	        		$("#fa-loadmore").text("没有更多内容...");
	        		$('#fa-loadmore').attr('disabled',"true");
	        		flag = false;
	        	}
	        	
	        	//拼接html代码
	            $("#ulId").append(html);
	            if(flag){
	            	$("#fa-loadmore").text("加载更多");
	            }
	            
	          }
	    	});
	}else{
		// 如果每页加载的个数，大于获取到的内容条数，就说明全部数据已加载完，没有更多数据可以加载
   		$("#fa-loadmore").text("没有更多内容...");
   		$('#fa-loadmore').attr('disabled',"true");
   		flag = false;
	}
});

</script>

</html>