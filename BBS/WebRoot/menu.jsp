<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="dbean" class="link.DataBaseConnection" scope="request"></jsp:useBean>
<html>
  <head>
    <title>菜单栏</title>
  </head>
  
  <body align="center">
  <table>
  <tr width=1000px height=40px>
  <td width=200px><a href="ling.jsp" target=main>当前用户：ling</a><hr></td>
       <td  width=200px><a href="main.jsp" target=main>BBS首页</a></td>
       <td width=200px><a href="seek.jsp" target=main>搜索帖子</a></td>
	   <td width=200px><a href="DL.jsp" target=main>登录</a></td>
	   <td width=200px><a href="registered.jsp" target=main>注册</a></td>
	 </tr>
	   </table>
  </body>
</html>