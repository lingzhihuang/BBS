<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="dbean" class="link.DataBaseConnection" scope="request"></jsp:useBean>
<html>
  <head>
    <title>My JSP 'left_main.jsp' starting page</title>
  </head>
  
  <body>
	   <font clolor="blue" size='3'>当前用户：ling></font><hr><br>
	   <font color="red" size='4' style = "font-famliy:simhei">用户功能</font><hr>
	   <a href="put.jsp" target=main>发表帖子</a><br><br>
	   <a href="read_message_list.jsp" target=main>查看留言列表</a><br><br>
	   <a hre  f="read_message.jsp" target=main>阅读留言</a><br><br><br><br>
	   <font color="red" size='4' style = "font-famliy:simhei">管理员功能</font><hr>
	   <a href="manage1.jsp" target=main>留言管理</a><br><br>
	     <a href="manage2.jsp" target=main>用户管理</a>
  </body>
</html>
