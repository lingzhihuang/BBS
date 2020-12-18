
package link ;

import java.sql.* ;

public class DataBaseConnection
{
	private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private static final String URL ="jdbc:mysql://localhost:3306/bbs?useUnicode=true&characterEncoding=UTF-8&useSSL=true" ;
	private static final String user="root";
	private static final String password="654321";
	public static Connection getConnection(){
		Connection dbconnection =null;
		try{
			Class.forName(DRIVER_CLASS);
			dbconnection = DriverManager.getConnection(URL,user,password);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return dbconnection;
	}
	//关闭连接数据库
	public static void closeConnection(Connection dbconnection){
		try{
			if(dbconnection !=null&&!dbconnection.isClosed()){
				dbconnection.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//关闭结果集
	public static void closeResultSet(ResultSet res){
		try{
			if(res !=null){
				res.close();
				res =null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void closeStatement(PreparedStatement PStatement){
		try{
			if(PStatement!=null){
				PStatement.close();
				PStatement =null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
}

