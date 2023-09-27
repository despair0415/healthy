package com.Itkuang.mvcdemo.dao.impl ;

import java.sql.* ;
import java.util.ArrayList;
import java.util.List;

import com.Itkuang.mvcdemo.dao.IUserDAO;
import com.Itkuang.mvcdemo.vo.User;
import com.Itkuang.mvcdemo.vo.monitor;


public class UserDAOImpl implements IUserDAO {
	private Connection conn = null ;            //数据库连接对象
	private PreparedStatement pstmt = null ;    //数据库操作对象

	public UserDAOImpl(Connection conn){        //设置数据库连接
		this.conn = conn ;
		System.out.println(conn);
	}

	//根据手机号与密码进行登录，若有值则登录成功，无值则失败
	public boolean findLogin(User user) throws Exception{
		boolean flag = false ;
		String sql = "SELECT username FROM users WHERE phone=?  AND password=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;    //实例化操作
		this.pstmt.setString(1,user.getPhone()) ;
		this.pstmt.setString(2,user.getPassword()) ;
		ResultSet rs = this.pstmt.executeQuery() ;
		if(rs.next()){
			user.setUsername(rs.getString(1)); ;    //取出一个用户的姓名
			flag = true ;
		}
		this.pstmt.close() ;                //关闭操作
		return flag ;
	}
	public User findById(int uid) throws Exception {
		User user = null ;
		String sql = "SELECT uid,username,password,phone,email,createtime,sex,birthday,image FROM user WHERE uid=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setInt(1, uid);
		ResultSet rs = this.pstmt.executeQuery() ;
		if(rs.next()){
			user = new User();
			user.setUid(rs.getInt(1));
			user.setUsername(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setPhone(rs.getString(4));
			user.setEmail(rs.getString(5));
			user.setCreatetime(rs.getString(6));
			user.setSex(rs.getString(7));
			user.setBirthday(rs.getString(8));
			user.setImage(rs.getString(9));
		}
		this.pstmt.close() ;
		return user ;
	}
	//根据手机号查找用户信息
	@Override
	public User findByPhone(String phone) throws Exception {
		// TODO Auto-generated method stub
		User user = null ;
		String sql = "SELECT uid,username,password,phone,email,createtime,sex,birthday,image FROM user WHERE phone=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setString(1, phone);
		ResultSet rs = this.pstmt.executeQuery() ;
		if(rs.next()){
			user = new User();
			user.setUid(rs.getInt(1));
			user.setUsername(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setPhone(rs.getString(4));
			user.setEmail(rs.getString(5));
			user.setCreatetime(rs.getString(6));
			user.setSex(rs.getString(7));
			user.setBirthday(rs.getString(8));
			user.setImage(rs.getString(9));
		}
		this.pstmt.close() ;
		return user ;
	}

	//创建用户
	@Override
	public boolean doCreate(User user) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false ;
		//添加SQL语句
		String sql = "INSERT INTO user(uid,username,password,phone,email,createtime,sex,birthday,image) VALUES (?,?,?,?,?,?,?,?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;//实例化PrepareStatement对象
		//设置对应VO的值
		this.pstmt.setInt(1,user.getUid()); ;
		this.pstmt.setString(2,user.getUsername()) ;
		this.pstmt.setString(3,user.getPassword()) ;
		this.pstmt.setString(4,user.getPhone()) ;
		this.pstmt.setString(5,user.getEmail()) ;
		this.pstmt.setString(6,user.getCreatetime()) ;
		this.pstmt.setString(7,user.getSex()) ;
		this.pstmt.setString(8,user.getBirthday()) ;
		this.pstmt.setString(9,user.getImage()) ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;    //关闭PrepareStatement对象
		return flag ;
	}

	//不理解的部分，本身是有一个person表，里面两个参数是userid和otherid
	@Override
	public boolean doBind(int id, int id1) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		//添加SQL语句
		String sql = "INSERT INTO person(userid,otherid) VALUES (?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;//实例化PrepareStatement对象
		//设置对应VO的值
		this.pstmt.setInt(1,id); ;
		this.pstmt.setInt(2,id1); ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;    //关闭PrepareStatement对象
		//添加SQL语句
		String sql1 = "update user set person=person+1 where userid=?" ;
		this.pstmt = this.conn.prepareStatement(sql1) ;//实例化PrepareStatement对象
		this.pstmt.setInt(1,id); ;
		this.pstmt.executeUpdate();
		this.pstmt.close() ;    //关闭PrepareStatement对象
		return flag ;
	}

	@Override
	public List<monitor> findMonitorById(int uid) throws Exception {
		// TODO Auto-generated method stub
		List<monitor> list=new ArrayList<monitor>();
		String sql = "SELECT moid,rate,high,low,oxygen,uid,mtime FROM monitor WHERE uid=?" ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		this.pstmt.setInt(1, uid);
		ResultSet rs = this.pstmt.executeQuery() ;
		while(rs.next()){
			monitor monitor1 = new monitor();
			monitor1.setMoid(rs.getInt(1));
			monitor1.setRate(rs.getInt(2));
			monitor1.setHigh(rs.getFloat(3));
			monitor1.setLow(rs.getFloat(4));
			monitor1.setOxygen(rs.getString(5));
			monitor1.setUid(rs.getInt(6));
			monitor1.setMtime(rs.getTimestamp(7));//此处还是有问题
			list.add(monitor1);
		}
		this.pstmt.close() ;
		return list ;
	}

	@Override
	public boolean doData(monitor monitor1) throws Exception {
		boolean flag = false ;
		//添加SQL语句
		String sql = "INSERT INTO monitor(moid,rate,high,low,oxygen,uid,mtime) VALUES (?,?,?,?,?)" ;
		this.pstmt = this.conn.prepareStatement(sql) ;//实例化PrepareStatement对象
		//设置对应VO的值
		this.pstmt.setInt(1,monitor1.getMoid()); ;
		this.pstmt.setInt(2,monitor1.getRate()); ;
		this.pstmt.setFloat(3,monitor1.getHigh()); ;
		this.pstmt.setFloat(4,monitor1.getLow()); ;
		this.pstmt.setString(5,monitor1.getOxygen()); ;
		this.pstmt.setInt(6,monitor1.getUid()) ;
		this.pstmt.setTimestamp(7,monitor1.getMtime()); ;
		if(this.pstmt.executeUpdate() > 0){
			flag = true ;
		}
		this.pstmt.close() ;    //关闭PrepareStatement对象
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