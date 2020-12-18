
package daoimpl ;

import java.sql.* ;
import dao.* ;
import dbc.* ;
import vo.* ;

public class PersonDAOImpl implements PersonDAO
{
	public boolean isLogin(PersonVo pv)
	{
		boolean flag = false ;
		PreparedStatement pstmt	= null ;
		ResultSet rs			= null ;
		String sql				= null ;
		DataBaseConnection dbc	= null ;
		dbc = new DataBaseConnection() ;
		sql = "SELECT name FROM person WHERE id=? and password=?" ;
		try
		{			
			pstmt = dbc.getConnection().prepareStatement(sql) ;
			pstmt.setString(1,pv.getId()) ;
			pstmt.setString(2,pv.getPassword()) ;
			rs = pstmt.executeQuery() ;
			if(rs.next())
			{
				flag = true ;
				pv.setName(rs.getString(1)) ;
			}
			rs.close() ;
			pstmt.close() ;
		}
		catch(Exception e)
		{
			System.out.println(e) ;
		}
		finally
		{
			dbc.close() ;
		}
		return flag ;
	}
};