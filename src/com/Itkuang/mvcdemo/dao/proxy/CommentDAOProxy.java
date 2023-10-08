package com.Itkuang.mvcdemo.dao.proxy;

import com.Itkuang.mvcdemo.dao.impl.CommentDAOImpl;
import com.Itkuang.mvcdemo.db.DatabaseConnection;
import com.Itkuang.mvcdemo.vo.Comment;
import com.Itkuang.mvcdemo.vo.User;


public class CommentDAOProxy {

    private DatabaseConnection db = null ;    //数据库连接对象
    private CommentDAOImpl dao = null ;            //定义DAO接口

    public CommentDAOProxy(){
        try{
            this.db = new DatabaseConnection() ;    //数据库连接
        }catch(Exception e){
            System.out.println("数据库");
            e.printStackTrace() ;
        }
        this.dao = new CommentDAOImpl(db.getConnection()) ;

    }
//根据帖子查找评论信息
    public Comment findcomment(int cid) throws Exception{
        Comment comment=null;
        try{
            comment = this.dao.findcomment(cid) ;    //调用真实主题，完成操作
        }catch(Exception e){
            throw e ;
        }finally{
            this.db.close() ;
        }
        return comment ;
    }
//根据用户id查找评论
    public Comment finduser(int uid) throws Exception{
        Comment comment=null;
        try{
            comment = this.dao.finduser(uid) ;    //调用真实主题，完成操作
        }catch(Exception e){
            throw e ;
        }finally{
            this.db.close() ;
        }
        return comment ;
    }


}
