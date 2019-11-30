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
    <!--headline end-->
    <div class="clearblank"></div>
    <div class="whitebg bloglist">
      <h2 class="htitle">最新博文</h2>
      <ul id="ulId">
      	<c:forEach items="${list}" var="article">
	      	<li>
	          <h3 class="blogtitle"><a href="<%=basePath%>/article/ToArticleInfo?articleId=${article.id }" >${article.headTitle }</a></h3>
	          <p class="blogtext">${article.content } </p>
	          <p class="bloginfo"><i class="avatar"><img src="<%=basePath%>/resources/images/headimg.jpg"></i><span>小本书籍</span><span>${article.timeDate }</span></p>
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
  </a> </footer>
</body>
<script language="javascript">

//  页面刷新，回到页面顶部
$('html ,body').animate({ scrollTop: -10 }, 300);


var page=2;
$("#fa-loadmore").click(function(){
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
                 '<p class="bloginfo"><i class="avatar"><img src="<%=basePath%>/resources/images/headimg.jpg"></i><span>小本书籍</span><span>'+result.list[i].timeDate+'</span></p>'+
                 '<a href="<%=basePath%>/article/ToArticleInfo?articleId='+result.list[i].id+'" class="viewmore">阅读更多</a></li>';
               	
            }
        	
        	// 如果每页加载的个数，大于获取到的内容条数，就说明全部数据已加载完，没有更多数据可以加载
        	if(result.list.length < result.pageInfo.pageSize){
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
    });

</script>

</html>