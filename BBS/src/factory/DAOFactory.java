// ȡ��DAOʵ���Ĺ�����

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