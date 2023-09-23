package com.Itkuang.mvcdemo.factory ;

import com.Itkuang.mvcdemo.dao.IUserDAO;
import com.Itkuang.mvcdemo.dao.proxy.UserDAOProxy;

public class DAOFactory {
	public static IUserDAO getIUserDAOInstance(){//取得DAO实例
		return new UserDAOProxy() ;//返回代理实例
	}
}