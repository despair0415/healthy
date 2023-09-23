package com.Itkuang.mvcdemo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Itkuang.mvcdemo.factory.DAOFactory;
import com.Itkuang.mvcdemo.vo.User;

public class Logon extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = req.getParameter("qq") ;
		String name = req.getParameter("user") ;
		String userpass = req.getParameter("passwd") ;
		PrintWriter out=resp.getWriter();     //初始化out对象
		    User user = new User() ;//实例化user对象
			user.setUserid(userid) ;
			user.setName(name);
			user.setPassword(userpass) ;
			user.setData(0);
			user.setPerson(0);
			try{
				if(DAOFactory.getIUserDAOInstance().findById(userid)==null){
					boolean flag=false;
					flag=DAOFactory.getIUserDAOInstance().doCreate(user);
				   
					if (flag) {
						out.print("<script language='javascript'>alert('Successful Login!!');  window.location.href='login/login.jsp';</script>");                   
					}	
					//resp.sendRedirect("index.jsp");
					//req.getRequestDispatcher("index.jsp").forward(req,resp) ;
					else {
				    user=null;
				    out.print("<script language='javascript'>alert('Login failed!!');window.location.href='login/login.jsp';</script>");                   
				}
				}
			}catch(Exception e){
				e.printStackTrace() ;
			}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = req.getParameter("Userid") ;
		String name = req.getParameter("Username") ;
		String userpass = req.getParameter("password") ;
		PrintWriter out=resp.getWriter();     //初始化out对象
		    User user1 = new User() ;//实例化user对象
			user1.setUserid(userid) ;
			user1.setName(name);
			user1.setPassword(userpass) ;
			try{
				if(DAOFactory.getIUserDAOInstance().findLogin(user1)){
					boolean flag=false;
					User user =(User)req.getSession().getAttribute("user");
					flag=DAOFactory.getIUserDAOInstance().doBind(user.getUserid(),user1.getUserid());
					if (flag) {
						out.print("<script language='javascript'>alert('Successful Bind!!');window.location.href='Time/time1.jsp?userid="+user1.getUserid()+"';</script>");                   
					}	
					else {
						out.print("<script language='javascript'>alert('Bind failed!!');window.location.href='zhuce/index.jsp';</script>");                   
				}
				}
			}catch(Exception e){
				e.printStackTrace() ;
			}
	}
}
