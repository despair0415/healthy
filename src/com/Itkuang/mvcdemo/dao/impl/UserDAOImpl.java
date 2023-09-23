package com.Itkuang.mvcdemo.dao.impl ;

import java.sql.* ;
import java.util.ArrayList;
import java.util.List;

import com.Itkuang.mvcdemo.dao.IUserDAO;
import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.data;


public class UserDAOImpl implements IUserDAO {
	private Connection conn = null ;            //数据库连接对象
	private PreparedStatement pstmt = null ;    //数据库操作对象

	public UserDAOImpl(Connection conn){        //设置数据库连接
		this.conn = conn ;
		System.out.println(conn);
	}

	public boolean findLogin(User user) throws Exception{
		boolean flag = false ;
		String sql = "SELECT name FROM user WHERE (userid=? or name=?) AND password=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;    //实例化操作
		this.pstmt.setString(1,user.getUserid()) ;
		this.pstmt.setString(2,user.getName()) ;
		this.pstmt.setString(3,user.getPassword());
		ResultSet rs = this.pstmt.executeQuery() ;
		if(rs.next()){
			user.setName(rs.getString(1)) ;    //取出一个用户的姓名
			flag = true ;
		}
		this.pstmt.close() ;                //关闭操作
		return flag ;
	}

	@Override
	public User findById(String userid) throws Exception {
		// TODO Auto-generated method stub
		User user = null ;
		String sql = "SELECT userid,name,password,data,person FROM user WHERE userid=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1, userid);
		ResultSet rs = this.pstmt.executeQuery() ;
		if(rs.next()){
			user = new User();
			user.setUserid(rs.getString(1));
			user.setName(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setData(rs.getInt(4));
			user.setPerson(rs.getInt(5));
		}
		this.pstmt.close() ;
		return user ;
	}

	@Override
	public boolean doCreate(User user) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false ;
		//添加SQL语句
		String sql = "INSERT INTO user(userid,name,password,data,person) VALUES (?,?,?,0,0)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;//实例化PrepareStatement对象
		//设置对应VO的值
		this.pstmt.setString(1,user.getUserid()) ;
		this.pstmt.setString(2,user.getName()) ;
		this.pstmt.setString(3,user.getPassword()) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;    //关闭PrepareStatement对象
		return flag ;
	}

	@Override
	public boolean doBind(String id, String id1) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		//添加SQL语句
		String sql = "INSERT INTO person(userid,otherid) VALUES (?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;//实例化PrepareStatement对象
		//设置对应VO的值
		this.pstmt.setString(1,id) ;
		this.pstmt.setString(2,id1) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;    //关闭PrepareStatement对象

		//添加SQL语句
		String sql1 = "update user set person=person+1 where userid=?" ;
		this.pstmt = this.conn.prepareStatement(sql1) ;//实例化PrepareStatement对象
		this.pstmt.setString(1,id) ;
		this.pstmt.executeUpdate();
		this.pstmt.close() ;    //关闭PrepareStatement对象
		return flag ;
	}

	@Override
	public List<data> findDataById(String userid) throws Exception {
		// TODO Auto-generated method stub
		data data1 = null;
		List<data> list=new ArrayList<data>();
		String sql = "SELECT userid,time,value1,value2,value3 FROM data WHERE userid=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1, userid);
		ResultSet rs = this.pstmt.executeQuery() ;
		while(rs.next()){
			data1  = new data();
			data1.setUserid(rs.getString(1));
			data1.setH(rs.getTimestamp(2));
			data1.setValue1(rs.getInt(3));
			data1.setValue2(rs.getInt(4));
			data1.setValue3(rs.getInt(5));
			list.add(data1);
		}
		this.pstmt.close() ;
		return list ;
	}

	@Override
	public boolean doData(data data) throws Exception {
		boolean flag = false ;
		//添加SQL语句
		String sql = "INSERT INTO data(userid,time,value1,value2,value3) VALUES (?,?,?,?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;//实例化PrepareStatement对象
		//设置对应VO的值
		this.pstmt.setString(1,data.getUserid()) ;
		this.pstmt.setTimestamp(2,data.getH()) ;
		this.pstmt.setInt(3,data.getValue1()) ;
		this.pstmt.setInt(4,data.getValue2()) ;
		this.pstmt.setInt(5,data.getValue3()) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;    //关闭PrepareStatement对象

		//添加SQL语句
		String sql1 = "update user set data=data+1 where userid=?" ;
		this.pstmt = this.conn.prepareStatement(sql1) ;//实例化PrepareStatement对象
		this.pstmt.setString(1,data.getUserid()) ;
		this.pstmt.executeUpdate();
		this.pstmt.close() ;    //关闭PrepareStatement对象
		return flag;
	}

	@Override
	public List<String> findPerById(String userid) throws Exception {
		// TODO Auto-generated method stub
		String str = null;
		List<String> list=new ArrayList<String>();
		String sql = "SELECT otherid FROM person WHERE userid=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1, userid);
		ResultSet rs = this.pstmt.executeQuery() ;
		while(rs.next()){
			str=rs.getString(1);
			list.add(str);
		}
		this.pstmt.close() ;
		return list ;
	}
} 