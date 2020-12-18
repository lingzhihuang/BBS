<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'next.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body align="center"  bgcolor=#ade>
 	<table>
 	<tr><td><img src="6.jpg"><br><br>
 	<a href="title.jsp" color=blue>标题党为什么惹人厌恶呢？？？</a></td>
 	</tr>
 	<tr>
 	<td><img src="7.jpg"><br><br>
 	<a href="red.jsp" color=blue>生活中的红光你又知道多少？</a></td>
 	</tr>
 	</table>
 	<iframe width=830px  height=30px src="fenye.jsp"></iframe>
  </body>
</html>
