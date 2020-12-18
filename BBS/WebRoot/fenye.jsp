<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <title>hello</title>
    </head>
    <body>
    <table border="1" spacing="2">
<%!
    public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String USER = "root";
    public static final String PASS = "654321";
    public static final String URL = "jdbc:mysql://localhost:3306/teachinfo";
    public static final int PAGESIZE = 2;
    int pageCount;
    int curPage = 1;
%>
<%
    //一页放5个
    String user = null;
    String pass = null;
    try{
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL,USER,PASS);
        String sql = "SELECT * FROM department";
        PreparedStatement stat = con.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stat.executeQuery();
        rs.last();
        int size = rs.getRow();
        pageCount = (size%PAGESIZE==0)?(size/PAGESIZE):(size/PAGESIZE+1);
        String tmp = request.getParameter("curPage");
        if(tmp==null){
            tmp="1";
        }
        curPage = Integer.parseInt(tmp);
        if(curPage>=pageCount) curPage = pageCount;
        boolean flag = rs.absolute((curPage-1)*PAGESIZE+1);
        out.println(curPage);//输出到屏幕上
        int count = 0;
         
        do{
            if(count>=PAGESIZE)break;
            int departmentid = rs.getInt(1);
            String departmentname = rs.getString(2);
            count++;
            %>
        <tr>
            <td><%=departmentid%></td>
            <td><%=departmentname%></td>
             
        </tr>
            <%
        }while(rs.next());
        con.close();
    }
    catch(Exception e){
         
    }
%>
</table>
<a href = "fenye.jsp?curPage=1" >首页</a>
<a href = "fenye.jsp?curPage=<%=curPage-1%>" >上一页</a>
<a href = "next.jsp" >下一页</a>
<a href = "fenye.jsp?curPage=<%=pageCount%>" >尾页</a>
第<%=curPage%>页/共2页
 
</body>
</html>
