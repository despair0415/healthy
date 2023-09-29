package com.Itkuang.mvcdemo.vo;

import java.sql.Timestamp;

public class orders {
    private int orderid;
    private int uid;
    private int commodityid;
    private String state;
    private String logistics;
    private float amount;
    private Timestamp ordertime;
    private Timestamp deliverytime;

    public orders(int orderid, int uid, int commodityid, String state, String logistics, float amount, Timestamp ordertime, Timestamp deliverytime) {
        this.orderid = orderid;
        this.uid = uid;
        this.commodityid = commodityid;
        this.state = state;
        this.logistics = logistics;
        this.amount = amount;
        this.ordertime = ordertime;
        this.deliverytime = deliverytime;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getCommodityid() {
        return commodityid;
    }

    public void setCommodityid(int commodityid) {
        this.commodityid = commodityid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getLogistics() {
        return logistics;
    }

    public void setLogistics(String logistics) {
        this.logistics = logistics;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public Timestamp getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Timestamp ordertime) {
        this.ordertime = ordertime;
    }

    public Timestamp getDeliverytime() {
        return deliverytime;
    }

    public void setDeliverytime(Timestamp deliverytime) {
        this.deliverytime = deliverytime;
    }
}
