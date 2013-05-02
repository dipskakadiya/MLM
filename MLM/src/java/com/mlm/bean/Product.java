/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sai
 */
public class Product {

    private Integer itemid;
    private String itemname;
    private Integer ctgid;
    private String ctgname;
    private Integer stock;
    private Integer rate;
    private Integer prelevel;
    private Integer tax;
    private String img;
    ArrayList<Product> Product_All = null;
    private DBConnection db;

    public Product() {
        db = DBConnection.db;
    }

    public String getCtgname() {
        return ctgname;
    }

    public void setCtgname(String ctgname) {
        this.ctgname = ctgname;
    }

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public Integer getCtgid() {
        return ctgid;
    }

    public void setCtgid(Integer ctgid) {
        this.ctgid = ctgid;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public Integer getPrelevel() {
        return prelevel;
    }

    public void setPrelevel(Integer prelevel) {
        this.prelevel = prelevel;
    }

    public Integer getTax() {
        return tax;
    }

    public void setTax(Integer tax) {
        this.tax = tax;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    //Insert
    public void Insert() {
        db.queryi("insert into TBL_ITEM values(" + itemid + ",'" + itemname + "'," + ctgid + "," + stock + "," + rate + "," + prelevel + ",'" + img + "')");
    }

    //Update 
    public void Update() {
        db.queryud("update TBL_ITEM set ITEM_NAME='" + itemname + "',CTG_ID=" + ctgid + ",STOCK=" + stock + ",RATE=" + rate + ",PREORDER_LEVEL=" + prelevel + ",IMAGE='" + img + "' where ITEM_ID=" + itemid);
    }
    //Delete

    public void delete() {
        db.queryud("delete from TBL_ITEM where ITEM_ID=" + itemid);
    }

    public ArrayList<Product> getAll() {
        try {
            ResultSet Rs_Product = db.querys("select TI.*,TC.CTG_NAME from TBL_ITEM TI,TBL_CTG TC where TI.CTG_ID=TC.CTG_ID order by TI.ITEM_ID");
            Product_All = new ArrayList<Product>();
            while (Rs_Product.next()) {
                Product T_pr = new Product();
                T_pr.setItemid(Rs_Product.getInt("ITEM_ID"));
                T_pr.setItemname(Rs_Product.getString("ITEM_NAME"));
                T_pr.setStock(Rs_Product.getInt("STOCK"));
                T_pr.setRate(Rs_Product.getInt("RATE"));
                T_pr.setTax(0);
                T_pr.setCtgid(Rs_Product.getInt("CTG_ID"));
                T_pr.setPrelevel(Rs_Product.getInt("PREORDER_LEVEL"));
                T_pr.setCtgname(Rs_Product.getString("CTG_NAME"));
                T_pr.setImg(Rs_Product.getString("IMAGE"));
                Product_All.add(T_pr);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return Product_All;
    }

    public ArrayList<Product> getAllBYCTG(int Cat_id) {
        try {
            ResultSet rs = db.querys("select TI.*,(select sum(CT.TAX) from CTG_TAX CT where CT.CTG_ID=TI.CTG_ID) as TAX from TBL_ITEM TI where TI.CTG_ID=" + Cat_id);
            Product_All = new ArrayList<Product>();
            while (rs.next()) {
                Product pr = new Product();
                pr.setItemid(rs.getInt("ITEM_ID"));
                pr.setItemname(rs.getString("ITEM_NAME"));
                pr.setCtgid(rs.getInt("CTG_ID"));
                pr.setStock(rs.getInt("STOCK"));
                pr.setRate(rs.getInt("RATE"));
                pr.setTax(rs.getInt("TAX"));
                pr.setPrelevel(rs.getInt("PREORDER_LEVEL"));
                /*if(rs.getInt("TAX_FLAG")==1){
                 //db.queryint("select  from ")
                 }*/
                pr.setImg(rs.getString("IMAGE"));
                Product_All.add(pr);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return Product_All;
    }

    public void getNextID() {
        itemid = db.queryint("select max(ITEM_ID)+1 from TBL_ITEM");

    }
}
