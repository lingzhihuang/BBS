<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<jsp:useBean id="db" class="link.DataBaseConnection" scope="request"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>判断登录</title>
</head>
<body>
<%
  request.setCharacterEncoding("GBK");
  String name=request.getParameter("name");
  String password=request.getParameter("password");
 %>
		<%
		 Connection conn =db.getConnection();
         Statement statement=conn.createStatement();
			String sql = "SELECT * FROM test";
			sql+="where name='"+name+"'and password='"+password+"'";
	         ResultSet rs = statement.executeQuery(sql);
	         if(rs.next())
	         { session.setAttribute("name", name);
	           response.sendRedirect("main.jsp");
	           }
	       else{
	       out.print("无此用户或密码有误，登录失败！<br><br>");
	       out.print("<a herf='DL.重新登录<//a>");
	       }       
		 %>
</body>
</html>
