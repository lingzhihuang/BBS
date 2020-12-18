<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员登录页面</title>
</head>
<body  bgcolor=#ade  >
	<h2 align="center"><font >管理员登录页面</font></h2>
	<form action="GLmain.jsp" method="post">
	<table align="center" border="1"  bgcolor=#ade  width=400 height=250>
		<tr>
			<td align="center">管理员帐号:</td>
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
			<td colspan="2" align="center" ><a href="DL.jsp" color=blue>普通用户登录</a></td>
		</tr>
	</table>
	</form>
	
</body>
</html>
