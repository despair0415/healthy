package com.Itkuang.mvcdemo.dao.impl;

import com.Itkuang.mvcdemo.vo.Comment;
import com.Itkuang.mvcdemo.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CommentDAOImpl {
    private Connection conn = null ;            //数据库连接对象
    private PreparedStatement pstmt = null ;    //数据库操作对象

    public CommentDAOImpl(Connection conn){        //设置数据库连接
        this.conn = conn ;
        System.out.println(conn);
    }
//根据帖子获取评论
    public Comment findcomment(int cid) throws Exception {
        Comment comment = null ;
        String sql = "SELECT commentid,uid,cid,comment,commenttime FROM comment WHERE cid=?" ;
        this.pstmt = this.conn.prepareStatement(sql) ;
        this.pstmt.setInt(1, cid);
        ResultSet rs = this.pstmt.executeQuery() ;
        if(rs.next()){
            comment = new Comment();
            comment.setCommentid(rs.getInt(1));
            comment.setUid(rs.getInt(2));
            comment.setCid(rs.getInt(3));
            comment.setComment(rs.getString(4));
            comment.setCommenttime(rs.getString(5));
        }
        this.pstmt.close() ;
        return comment ;
    }
//根据用户id查找其所有的评论
    public Comment finduser(int uid) throws Exception {
        Comment comment = null ;
        String sql = "SELECT commentid,uid,cid,comment,commenttime FROM comment WHERE uid=?" ;
        this.pstmt = this.conn.prepareStatement(sql) ;
        this.pstmt.setInt(1, uid);
        ResultSet rs = this.pstmt.executeQuery() ;
        if(rs.next()){
            comment = new Comment();
            comment.setCommentid(rs.getInt(1));
            comment.setUid(rs.getInt(2));
            comment.setCid(rs.getInt(3));
            comment.setComment(rs.getString(4));
            comment.setCommenttime(rs.getString(5));
        }
        this.pstmt.close() ;
        return comment ;
    }

}
