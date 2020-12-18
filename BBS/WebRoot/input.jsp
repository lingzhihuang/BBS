<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'input.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body >
	<h2 align="center"><font >普通用户登录页面</font></h2>
	<form action="main.jsp" method="post">
	<table align="center" border="1"  width=350 height=200>
		<tr>
			<td align="center">用户名:</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td align="center">密&nbsp;&nbsp;码:</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="登录" name="login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" name="reset"></td>	
		</tr>
		<tr>
			<td colspan="2" align="center" ><a href="GLDL.jsp" color=blue>管理员登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="registered.jsp" color=blue>注册用户</a></td>
		</tr>
	</table>
	</form>
	
</body>
</html>
