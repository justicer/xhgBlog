<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<div class="rbox">
    <div class="right-one-row layui-row pane-bg-radius">
         <div class="visit-img-box top-radius">
             <img src="<%=basePath%>/resources/images/网页图片.png" class="top-radius"/>
         </div>
         <div class="headimg-box">
             <img src="<%=basePath%>/resources/images/网页logo.png" style="margin-left: -27px;width:140px;"/>
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
      <ul>
	      <c:forEach items="${listArt}" var="article">
	            <li><i></i><a href="<%=basePath%>/article/ToArticleInfo?articleId=${article.id }">${article.headTitle }</a></li>
	      </c:forEach>
      </ul>
    </div>
    <%-- <div class="whitebg tuijian">
      <h2 class="htitle">站长推荐</h2>
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
    </div> --%>
  </div>