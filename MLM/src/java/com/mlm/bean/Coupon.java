/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;

/**
 *
 * @author Nadim
 */
public class Coupon {
    private Integer Coupon_ID;
    private String Coupon_Code;
    private Integer Rate;
    private DBConnection db;
    
    public Coupon()
    {
        db=new DBConnection();
    }

    public Integer getCoupon_ID() {
        return Coupon_ID;
    }

    public void setCoupon_ID(Integer Coupon_ID) {
        this.Coupon_ID = Coupon_ID;
    }

    public String getCoupon_Code() {
        return Coupon_Code;
    }

    public void setCoupon_Code(String Coupon_Code) {
        this.Coupon_Code = Coupon_Code;
    }

    public Integer getRate() {
        return Rate;
    }

    public void setRate(Integer Rate) {
        this.Rate = Rate;
    }
    
     public void Insert(){ 
        db.queryi("insert into Coupon values("+Coupon_ID+",'"+Coupon_Code+"',"+Rate+")");
    }
     public void Update(){
        db.queryud("update Coupon set COUPON_ID="+Coupon_ID+",COUPON_CODE='"+Coupon_Code+"',RATE="+Rate+" where Coupon_ID="+Coupon_ID);
    }
     public void delete(){
        db.queryud("delete from Coupon where COUPON_ID="+Coupon_ID);
    }
}
