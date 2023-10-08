package com.Itkuang.mvcdemo.dao;

import com.Itkuang.mvcdemo.vo.Comment;
import com.Itkuang.mvcdemo.vo.User;

public interface ICommentDAO {
    public Comment findcomment(int cid) throws Exception ;
    //根据编号查询
    public Comment finduser(int uid) throws Exception ;
    public Comment findAll() throws Exception ;
}
