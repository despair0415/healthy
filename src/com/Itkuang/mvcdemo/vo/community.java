package com.Itkuang.mvcdemo.vo;

public class community {
    private int cid;
    private int uid;
    private String content;
    private String createtime;
    private String up;

    public community(int cid, int uid, String content, String createtime, String up) {
        this.cid = cid;
        this.uid = uid;
        this.content = content;
        this.createtime = createtime;
        this.up = up;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getUp() {
        return up;
    }

    public void setUp(String up) {
        this.up = up;
    }
}
