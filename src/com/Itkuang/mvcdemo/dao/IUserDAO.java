package com.Itkuang.mvcdemo.dao ;

import java.util.List;

import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.monitor;
public interface IUserDAO {
	//登录验证，登录操作只有true/false两种返回结果
	public boolean findLogin(User user) throws Exception ;
	//根据编号查询
	public User findByPhone(String phone) throws Exception ;
	public User findById(int uid) throws Exception ;
	//根据编号查询数据
	public List<String> findPerById(String userid) throws Exception ;
	//增加
	public boolean doCreate(User user) throws Exception ;

	List<monitor> findMonitorById(int uid) throws Exception;

	public boolean doData(monitor monitor) throws Exception ;
	
	//绑定???
	public boolean doBind(int id,int id1) throws Exception ;
} 