package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.PersonVo;
import factory.DAOFactory;

public class login extends HttpServlet {

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		this.doPost(request,response) ;
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		List errors = new ArrayList() ;
		String path = "DL.jsp" ;
		String name = request.getParameter("name") ;
		String password = request.getParameter("password") ;
		PersonVo pv = new PersonVo() ;
		pv.setId(name) ;
		pv.setPassword(password) ;
		pv.setErrors(errors) ;
		if(pv.invalidate())
		{
			if(DAOFactory.getPersonDAOInstance().isLogin(pv))
			{
				
				path = "main.jsp" ;
			}
			else
			{

				errors.add("错误的用户名及密码！") ;
			}
		}
		request.setAttribute("errors",errors) ;
		request.setAttribute("person",pv) ;
		request.getRequestDispatcher(path).forward(request,response) ;
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
