
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
			// ������������
			Class.forName(DBDRIVER) ; 
			// �������ݿ�
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD) ;	
		}
		catch (Exception e)
		{
			System.out.println(e) ;
		}
	}

	// ����һ�����ݿ�����
	public Connection getConnection()
	{
		return this.conn ;
	}

	// �ر����ݿ�����
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
