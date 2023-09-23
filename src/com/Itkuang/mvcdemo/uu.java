package com.Itkuang.mvcdemo;

import java.util.ArrayList;
import java.util.List;

import com.Itkuang.mvcdemo.factory.DAOFactory;
import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.data;

public class uu {
public static void main(String[] args) {
	List<data> list=new ArrayList<data>();
	boolean b=false;
	User a=new User();
	a.setUserid("123456") ;
	a.setPassword("123456") ;
	try {
		b=DAOFactory.getIUserDAOInstance().findLogin(a);
		list =DAOFactory.getIUserDAOInstance().findDataById("123456");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	System.out.println(b);
	System.out.println(list.size());
	System.out.println(list.get(0).getValue1());
}
}
