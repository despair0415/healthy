package com.Itkuang.mvcdemo.vo;

public class Comment {
    private int commentid;
    private int uid;
    private int cid;
    private String comment;
    private String commenttime;

    public Comment(int commentid, int uid, int cid, String comment, String commenttime) {
        this.commentid = commentid;
        this.uid = uid;
        this.cid = cid;
        this.comment = comment;
        this.commenttime = commenttime;
    }

    public Comment() {

    }

    public int getCommentid() {
        return commentid;
    }

    public void setCommentid(int commentid) {
        this.commentid = commentid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(String commenttime) {
        this.commenttime = commenttime;
    }
}
