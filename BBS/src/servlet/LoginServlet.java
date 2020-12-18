
package servlet ;

import java.io.* ;
import java.util.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
import factory.*;
import vo.*;

public class LoginServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		this.doPost(request,response) ;
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		List errors = new ArrayList() ;
		String path = "login.jsp" ;
		String id = request.getParameter("id") ;
		String password = request.getParameter("password") ;
		PersonVo pv = new PersonVo() ;
		pv.setId(id) ;
		pv.setPassword(password) ;
		pv.setErrors(errors) ;
		if(pv.invalidate())
		{
			if(DAOFactory.getPersonDAOInstance().isLogin(pv))
			{
				
				path = "login_success.jsp" ;
			}
			else
			{

				errors.add("错误的用户ID及密码！") ;
			}
		}
		request.setAttribute("errors",errors) ;
		request.setAttribute("person",pv) ;
		request.getRequestDispatcher(path).forward(request,response) ;
	}
};
