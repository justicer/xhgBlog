<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增文章</title>
<link href="<%=basePath%>/resources/css/base.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/m.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/common.css" rel="stylesheet">
<link rel='stylesheet' href='<%=basePath%>/resources/css/reset.css' type='text/css' media='all' />
<link rel='stylesheet' href='<%=basePath%>/resources/css/style.css' type='text/css' media='all' />
<script type="text/javascript" src="<%=basePath%>/resources/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<header id="header">
<div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="#">小恒哥的个人博客</a></div>
    <nav>
    </nav>
  </div>
</header>
 
 <article> 
  <!--lbox begin-->
  <div class="container-fluid">
 
         <div class="col-md-8">
 
                 <div class="title">
                     <label for="">标题: </label>
                     <p><input type="text" name="title" id="headTitle"></p>
                 </div>
                 <div class="con">
                     <label for="">内容: (kindEditor编辑器, 支持拖放/粘贴上传图片)</label>
                     <p><textarea name="content" class="content" id="article_area" cols="60" rows="10"></textarea></p>
                 </div>
                 <p><input type="button" value="提交" class="btn btn-primary" id="add"></p>
 
         </div>
     </div>
 </div>
 
  <div class="rbox">
  </div>
</article>
 
 <footer style="margin-top:115px;">
  </footer>
</body>
 <script src="<%=basePath%>/resources/js/kindeditor-all-min.js"></script>
 
 <script>
 
     KindEditor.ready(function (K) {
         window.editor = K.create( //这里的内容是从kindeditor官方文档里面找到的编辑器使用方法里的代码
             '#article_area', { //这里使用'#article_area'就是我们的js或者是jquery代码里面查找标签的方法,是一样的.我们在页面对应的需要放文本编辑款的位置写一个textarea标签,然后我们在js里面找到这个标签在kindeditor里面也有找标签的响应语法基本上功能跟js如出一辙,大大减少使用成本.对这个textarea标签进行操作给里面加上一些参数达到一定的效果
                 width: 800, //这里的参数是kindeditor官方文档里面编辑器初始化参数
                 height: 400,
                 items: [ //这里的items也是编辑器初始化参数它里面是一个列表,列表中的每一项都是我们的编辑框里面的每一种功能,
                     // 可以自定义截取,应用场景是我们的写文章的输入框里面需要尽可能多的功能,但是我们的评论框里面则不需要那么多的功能
                     'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
                     'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                     'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                     'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                     'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                    'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
                     'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                     'anchor', 'link', 'unlink', '|', 'about'
                 ],
                uploadJson: "/upload_file/",
                 extraFileUploadParams: {
                     'csrfmiddlewaretoken': $("[name='csrfmiddlewaretoken']").val()
                 },
                 filePostName: "upload_img"
             });
     });
     
     
     
     $("#add").click(function(){
    	 
    	 var article_area = editor.html();// 获取文本内容
    	 var headTitle = $("#headTitle").val();
    	 
    	 
    	 function isnull(val) {

    	        var str = val.replace(/(^\s*)|(\s*$)/g, '');//去除空格;

    	        if (str == '' || str == undefined || str == null) {
    	            return true;
    	        } else {
    	            return false;
    	        }
    	    }
    	 
    	 if(isnull(headTitle) || isnull(article_area)){
    		 alert("标题或内容不能为空！");
    	 }else{
    		 $.ajax({
    	        	type:"POST",
    	        	url:"<%=basePath%>/user/addArticle",
    	        	data:{
    	        		headTitle:headTitle,
    	        		article_area:article_area
    	        	},
    	        	success:function(data){
    	        		alert("ok");
    	        		window.location.href="<%=basePath%>/user/main"
    	        	}
    	        });
    	 } 
    	 
     });
     
 
 </script>
 </body>
</html>