package com.Itkuang.mvcdemo.db ;
import java.sql.* ;
public class DatabaseConnection {
	private static final String DBDRIVER = "com.mysql.cj.jdbc.Driver" ;
 	private static final String DBURL = "jdbc:mysql://1.94.26.136:3306/smile?allowPublicKeyRetrieval=true&useSSL=false&&serverTimezone=GMT" ;
	private static final String DBUSER = "admin";
	private static final String DBPASSWORD = "123456";
	private Connection conn = null ;
	public DatabaseConnection() throws Exception{
		try{
			Class.forName(DBDRIVER) ;
			this.conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD) ;
		}catch(Exception e){
			throw e ;
		}
	}
	public Connection getConnection(){
		return this.conn ;
	}
	public void close() throws Exception{
		if(this.conn != null){
			try{
				this.conn.close() ;
			}catch(Exception e){
				throw e ;
			}
		}
	}
}