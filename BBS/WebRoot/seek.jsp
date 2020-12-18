<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索站内信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=#ade>
  <p align="center"> <img   src="bbs.jpg"></img></p>
  <form action="main.jsp" method="post">
  <table  align="center">
  <tr width=1000px height=40px>
   <td width=200px><a href="ling.jsp" target=main>当前用户：ling</a><hr></td>
       <td  width=200px><a href="main.jsp" target=main>BBS首页</a></td>
       <td width=200px><a href="seek.jsp" target=main>搜索帖子</a></td>
	   <td width=200px><a href="DL.jsp" target=main>登录</a></td>
	   <td width=200px><a href="registered.jsp" target=main>注册</a></td>
	 </tr>
	   </table>
   <table align="center" border="1"  width=1020 height=300>
   <center>
   <tr>
   <td><input type="text" name=name value=输入关键字><input  type="submit" name=name value=搜索  ></td>
   </tr>
   <tr>
   <td >热门话题排行榜：</td>
   </tr>
   <tr>
   <td >
   <ol><li><a href="lttitle.jsp" color=blue>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019中国教育科学论坛主题论坛四聚焦“智能时代的教育”
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019-6-19</a></li>
    <li><a href="think.jsp" color=blue>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于编程的一些个人感悟！！！
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019-6-18</a></li>
    <li><a href="go.jsp" color=blue>一个人去旅行的70多条路线——&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019-6-18</a></li>
    <li><a href="title.jsp" color=blue>标题党为什么惹人厌恶呢？？？&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019-6-18</a></li>
    <li><a href="red.jsp" color=blue>生活中的红光你又知道多少？&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019-6-17</a></li>
    <li>热门话题：</li>
     <li>热门话题：</li>
    </ol></td>
   </tr>
   <tr>
   <td ><a href="all.jsp" color=blue> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;加载更多...</a></td>
   </tr>
   </center>
   </table>
   </form>
  </body>
</html>
