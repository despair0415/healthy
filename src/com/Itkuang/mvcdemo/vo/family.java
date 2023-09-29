package com.Itkuang.mvcdemo.vo;

public class family {
    private int fid;
    private int uid;
    private String domain;
    private String jointime;

    public family(int fid, int uid, String domain, String jointime) {
        this.fid = fid;
        this.uid = uid;
        this.domain = domain;
        this.jointime = jointime;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getJointime() {
        return jointime;
    }

    public void setJointime(String jointime) {
        this.jointime = jointime;
    }
}
