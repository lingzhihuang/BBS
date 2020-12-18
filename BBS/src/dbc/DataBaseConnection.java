
package dbc ;

import java.sql.* ;

public class DataBaseConnection
{
	private final String DBDRIVER	= "com.mysql.fabric.jdbc.FabricMySQLDriver" ;
	private final String DBURL		= "jdbc:mysql://localhost:3306/Second?useUnicode=true&characterEncoding=UTF-8" ;
	private final String DBUSER		= "root" ;
	private final String DBPASSWORD	= "123456" ;
	private Connection conn			= null ;

	public DataBaseConnection()
	{
		try
		{
			// 加载驱动程序
			Class.forName(DBDRIVER) ; 
			// 连接数据库
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD) ;	
		}
		catch (Exception e)
		{
			System.out.println(e) ;
		}
	}

	// 返回一个数据库连接
	public Connection getConnection()
	{
		return this.conn ;
	}

	// 关闭数据库连接
	public void close()
	{
		try
		{
			this.conn.close() ;			
		}
		catch (Exception e)
		{
		}
	}
};
