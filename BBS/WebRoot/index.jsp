<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>  
<%@ page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head>  
    <title> ���ݿ����Ӳ��� </title>  
    <meta name="website" content="http://www.crazyit.org" />  
</head>  
<body>  
<%  
//ע�����ݿ�����  
Class.forName("com.mysql.jdbc.Driver");  
//��ȡ���ݿ�����  
Connection conn = DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/mysql","root","654321");  
//����Statement  
Statement stmt = conn.createStatement();  
//ִ�в�ѯ  
ResultSet rs = stmt.executeQuery("select * from users");  
%>  
<table bgcolor="#eee" border="1" width="300">  
<tr align="center">  
        <td>ID</td>  
        <td>����</td>  
        <td>����</td>  
    </tr>  
<%  
//���������  

while(rs.next())  
{%>  
    <tr>  
        <!-- �������� -->  
        <td align="center"><%=rs.getString(1)%></td>  
        <td align="center"><%=rs.getString(2)%></td>  
        <td align="center"><%=rs.getString(3)%></td>  
    </tr>  
<%}%>  
</table>  
</body>  
</html>
