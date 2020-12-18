<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>  
<%@ page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head>  
    <title> 数据库连接测试 </title>  
    <meta name="website" content="http://www.crazyit.org" />  
</head>  
<body>  
<%  
//注册数据库驱动  
Class.forName("com.mysql.jdbc.Driver");  
//获取数据库连接  
Connection conn = DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/mysql","root","654321");  
//创建Statement  
Statement stmt = conn.createStatement();  
//执行查询  
ResultSet rs = stmt.executeQuery("select * from users");  
%>  
<table bgcolor="#eee" border="1" width="300">  
<tr align="center">  
        <td>ID</td>  
        <td>姓名</td>  
        <td>年龄</td>  
    </tr>  
<%  
//遍历结果集  

while(rs.next())  
{%>  
    <tr>  
        <!-- 输出结果集 -->  
        <td align="center"><%=rs.getString(1)%></td>  
        <td align="center"><%=rs.getString(2)%></td>  
        <td align="center"><%=rs.getString(3)%></td>  
    </tr>  
<%}%>  
</table>  
</body>  
</html>
