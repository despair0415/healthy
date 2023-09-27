package com.Itkuang.mvcdemo;

import java.util.ArrayList;
import java.util.List;

import com.Itkuang.mvcdemo.factory.DAOFactory;
import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.monitor;

public class uu {
public static void main(String[] args) {
	List<monitor> list=new ArrayList<monitor>();
	boolean b=false;
	User a=new User();
	a.setUid(1) ;
	a.setPassword("123456") ;
	try {
		b=DAOFactory.getIUserDAOInstance().findLogin(a);
		list =DAOFactory.getIUserDAOInstance().findMonitorById(1);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	System.out.println(b);
	System.out.println(list.size());
	System.out.println(list.get(0).getMtime());

}
}
