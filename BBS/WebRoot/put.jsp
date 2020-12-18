<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发帖子</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <<body align="center"  bgcolor=#ade >
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
	<form action="ly.jsp" method="post">
		<table  align="center" border="1"  bgcolor=#ade  width=1000 height=200>
		<tr><td width="">标题输入：<input type="text" ></td>
		</tr>
			<tr >
		 		<td><textarea rows="5" cols="80" value="发表你的评论"></textarea></td>
				
			</tr>
			
		
			<tr align="center">
				<td colspan="2" ><input type="submit" name=register value="提交" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" name=name value="取消" ></td>
			</tr>
		</table>
		</form>	
</body>
</html>
