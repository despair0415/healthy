package com.Itkuang.mvcdemo.dao ;

import java.util.List;

import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.data;
public interface IUserDAO {
	//登录验证，登录操作只有true/false两种返回结果
	public boolean findLogin(User user) throws Exception ;
	//根据编号查询
	public User findById(String userid) throws Exception ;
	//根据编号查询数据
	public List<data> findDataById(String userid) throws Exception ;
	
	public List<String> findPerById(String userid) throws Exception ;
	//增加
	public boolean doCreate(User user) throws Exception ;
	public boolean doData(data data) throws Exception ;
	
	//绑定
	public boolean doBind(String id,String id1) throws Exception ;
} 