package com.Itkuang.mvcdemo.dao.proxy ;

import java.util.ArrayList;
import java.util.List;

import com.Itkuang.mvcdemo.dao.IUserDAO;
import com.Itkuang.mvcdemo.dao.impl.UserDAOImpl;
import com.Itkuang.mvcdemo.db.DatabaseConnection;
import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.data;

public class UserDAOProxy implements IUserDAO {
	private DatabaseConnection db = null ;    //数据库连接对象
	private IUserDAO dao = null ;            //定义DAO接口

	public UserDAOProxy(){
		try{
			this.db = new DatabaseConnection() ;    //数据库连接
		}catch(Exception e){
			System.out.println("数据库");
			e.printStackTrace() ;
		}
		this.dao = new UserDAOImpl(db.getConnection()) ;

	}

	public boolean findLogin(User user) throws Exception{
		boolean flag = false ;
		try{
			flag = this.dao.findLogin(user) ;    //调用真实主题，完成操作
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return flag ;
	}

	@Override
	public User findById(String userid) throws Exception {
		// TODO Auto-generated method stub
		User user = null ;
		try{
			user = this.dao.findById(userid) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return user ;
	}

	@Override
	public boolean doCreate(User user) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false ;
		try{
			if(this.dao.findById(user.getUserid()) == null){
				flag = this.dao.doCreate(user) ;
			}
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return flag ;
	}

	@Override
	public boolean doBind(String id, String id1) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false ;
		try{
			flag = this.dao.doBind(id,id1);
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return flag ;
	}

	@Override
	public List<data> findDataById(String userid) throws Exception {
		// TODO Auto-generated method stub
		List<data> list=new ArrayList<data>();
		try{
			list = (List<data>) this.dao.findDataById(userid) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return list ;
	}

	@Override
	public boolean doData(data data) throws Exception {
		boolean flag = false ;
		try{
			flag = this.dao.doData(data) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return flag ;
	}

	@Override
	public List<String> findPerById(String userid) throws Exception {
		// TODO Auto-generated method stub
		List<String> list=new ArrayList<String>();
		try{
			list = (List<String>) this.dao.findPerById(userid) ;
		}catch(Exception e){
			throw e ;
		}finally{
			this.db.close() ;
		}
		return list ;
	}
} 