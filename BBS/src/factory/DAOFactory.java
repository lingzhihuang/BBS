// 取得DAO实例的工厂类

package factory ;

import dao.* ;
import daoimpl.* ;

public class DAOFactory
{
	public static PersonDAO getPersonDAOInstance()
	{
		return new PersonDAOImpl() ;
	}
};