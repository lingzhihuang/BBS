<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>注册用户</title>
</head>
<body align="center"  bgcolor=#ade >
	<h2>新用户注册</h2>
	<form action="successREG.jsp" method="post">
		<table  align="center" border="1"  bgcolor=#ade  width=400 height=400>
			<tr >
		 		<td>请输入用户名:</td>
				<td><input type="text" name=name autofocus="autofocus"></td>
			</tr>
			<tr  >
				<td>请输入密码:</td>
				<td><input type="password" name=password></td>
			</tr>
			<tr  >
				<td>请输入确认密码:</td>
				<td><input type="password" name=password></td>
			</tr>
			<tr  >
				<td>性别:</td>
				<td><input type="radio" name=name value="男">男<input type="radio" name=name value="女">女</td>
			</tr>
			<tr><td colspan="2">个人评价：</td>
		</tr>
			<tr >
		 		<td colspan="2"><textarea rows="5" cols="80" value="发表你的评论"></textarea></td>
				
			</tr>
			<tr align="center">
				<td colspan="2" ><input type="submit" name=register value="注册" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" name=name value="取消" ></td>
			</tr>
		</table>
		</form>	
</body>
</html>
