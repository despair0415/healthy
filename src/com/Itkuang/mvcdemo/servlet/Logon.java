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
		int uid = Integer.parseInt(req.getParameter("1"));
		String name = req.getParameter("user") ;
		String password = req.getParameter("password") ;
		String phone=req.getParameter("00000000000");
		String email=req.getParameter("@xx.com");
		String createtime=req.getParameter("x年x月x日");
		String sex=req.getParameter("未知");
		String birthday=req.getParameter("2000-01-01");
		String image=req.getParameter("");
		PrintWriter out=resp.getWriter();     //初始化out对象
		    User user = new User() ;//实例化user对象
			user.setUid(uid); ;
			user.setUsername(name);
			user.setPassword(password) ;
			user.setPhone(phone);
			user.setEmail(email);
			user.setSex(sex);
			user.setCreatetime(createtime);
			user.setBirthday(birthday);
			user.setImage(image);
			try{
				if(DAOFactory.getIUserDAOInstance().findById(uid)==null){
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
		int uid=Integer.parseInt(req.getParameter("uid"));//前端只能返回string类型，需将其进行转换
		String password = req.getParameter("password") ;
		String name = req.getParameter("user") ;
		String phone=req.getParameter("00000000000");
		String email=req.getParameter("@xx.com");
		String createtime=req.getParameter("x年x月x日");
		String sex=req.getParameter("未知");
		String birthday=req.getParameter("2000-01-01");
		String image=req.getParameter("");
		PrintWriter out=resp.getWriter();     //初始化out对象
		    User user1 = new User() ;//实例化user对象
		user1.setUid(uid); ;
		user1.setUsername(name);
		user1.setPassword(password) ;
		user1.setPhone(phone);
		user1.setEmail(email);
		user1.setSex(sex);
		user1.setCreatetime(createtime);
		user1.setBirthday(birthday);
		user1.setImage(image);
			try{
				if(DAOFactory.getIUserDAOInstance().findLogin(user1)){
					boolean flag=false;
					User user =(User)req.getSession().getAttribute("user");
					flag=DAOFactory.getIUserDAOInstance().doBind(user.getUid(),user1.getUid());
					if (flag) {
						out.print("<script language='javascript'>alert('Successful Bind!!');window.location.href='Time/time1.jsp?userid="+user1.getUid()+"';</script>");
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
