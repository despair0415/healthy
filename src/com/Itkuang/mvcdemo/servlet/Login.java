package com.Itkuang.mvcdemo.servlet ;
import java.io.* ;
import java.util.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;

import com.Itkuang.mvcdemo.factory.DAOFactory;
import com.Itkuang.mvcdemo.vo.User;

public class Login extends HttpServlet {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String userid = req.getParameter("userid") ;
		String userpass = req.getParameter("userpass") ;
		PrintWriter out=resp.getWriter();     //初始化out对象
		User user = new User() ;//实例化user对象
		user.setUserid(userid) ;
		user.setPassword(userpass) ;
		try{
			if(DAOFactory.getIUserDAOInstance().findLogin(user)){
				user=DAOFactory.getIUserDAOInstance().findById(userid);
//				req.setAttribute("user",user) ;
				HttpSession sess = req.getSession();
				sess.setAttribute("user", user);
				out.print("<script language='javascript'>alert('Welcome to P&Life!!');window.location.href='index.jsp';</script>");
//				resp.sendRedirect("index.jsp");
//				req.getRequestDispatcher("index.jsp").forward(req,resp) ;
			} else {
				user=null;
				out.print("<script language='javascript'>alert('Wrong input!!');window.location.href='login/login.jsp';</script>");
			}
		}catch(Exception e){
			e.printStackTrace() ;
		}

	}

	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}