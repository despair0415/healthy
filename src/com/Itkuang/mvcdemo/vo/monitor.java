package com.Itkuang.mvcdemo.vo;

import java.security.Timestamp;

public class monitor {
    private int moid;
    private int rate;
    private float high;
    private float low;
    private String oxygen;
    private int uid;
    private java.sql.Timestamp mtime;
    public monitor() {

    }
    public monitor(int moid, int rate, float high, float low, String oxygen, int uid, java.sql.Timestamp mtime) {
        this.moid = moid;
        this.rate = rate;
        this.high = high;
        this.low = low;
        this.oxygen = oxygen;
        this.uid = uid;
        this.mtime = mtime;
    }

    public int getMoid() {
        return moid;
    }

    public void setMoid(int moid) {
        this.moid = moid;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public float getHigh() {
        return high;
    }

    public void setHigh(float high) {
        this.high = high;
    }

    public float getLow() {
        return low;
    }

    public void setLow(float low) {
        this.low = low;
    }

    public String getOxygen() {
        return oxygen;
    }

    public void setOxygen(String oxygen) {
        this.oxygen = oxygen;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
//数据库要sql.timestamp类型，原文需要security.timestamp类型，所以报错
    public java.sql.Timestamp getMtime() {
        return mtime;
    }



    public void setMtime(java.sql.Timestamp timestamp) {
        this.mtime = mtime;
    }
}
