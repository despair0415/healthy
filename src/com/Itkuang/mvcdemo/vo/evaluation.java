package com.Itkuang.mvcdemo.vo;

public class evaluation {
    private int eid;
    private int uid;
    private int goodsid;
    private String evaluationcontent;
    private String evatime;

    public evaluation(int eid, int uid, int goodsid, String evaluationcontent, String evatime) {
        this.eid = eid;
        this.uid = uid;
        this.goodsid = goodsid;
        this.evaluationcontent = evaluationcontent;
        this.evatime = evatime;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(int goodsid) {
        this.goodsid = goodsid;
    }

    public String getEvaluationcontent() {
        return evaluationcontent;
    }

    public void setEvaluationcontent(String evaluationcontent) {
        this.evaluationcontent = evaluationcontent;
    }

    public String getEvatime() {
        return evatime;
    }

    public void setEvatime(String evatime) {
        this.evatime = evatime;
    }
}
