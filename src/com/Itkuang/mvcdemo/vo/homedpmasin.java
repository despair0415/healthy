package com.Itkuang.mvcdemo.vo;

public class homedpmasin {
    private int domainid;
    private String domainname;
    private int createuid;
    private String createtime;

    public homedpmasin(int domainid, String domainname, int createuid, String createtime) {
        this.domainid = domainid;
        this.domainname = domainname;
        this.createuid = createuid;
        this.createtime = createtime;
    }

    public int getDomainid() {
        return domainid;
    }

    public void setDomainid(int domainid) {
        this.domainid = domainid;
    }

    public String getDomainname() {
        return domainname;
    }

    public void setDomainname(String domainname) {
        this.domainname = domainname;
    }

    public int getCreateuid() {
        return createuid;
    }

    public void setCreateuid(int createuid) {
        this.createuid = createuid;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}
