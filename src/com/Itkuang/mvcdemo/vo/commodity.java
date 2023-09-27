package com.Itkuang.mvcdemo.vo;

public class commodity {
    private int commodityid;
    private String name;
    private String category;
    private String introduce;
    private String image;
    private int orders;

    public commodity(int commodityid, String name, String category, String introduce, String image, int orders) {
        this.commodityid = commodityid;
        this.name = name;
        this.category = category;
        this.introduce = introduce;
        this.image = image;
        this.orders = orders;
    }

    public int getCommodityid() {
        return commodityid;
    }

    public void setCommodityid(int commodityid) {
        this.commodityid = commodityid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getOrders() {
        return orders;
    }

    public void setOrders(int orders) {
        this.orders = orders;
    }
}
