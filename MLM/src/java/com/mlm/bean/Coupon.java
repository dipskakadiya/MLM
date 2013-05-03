/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nadim
 */
public class Coupon {
    private Integer Coupon_ID;
    private String Coupon_Code;
    private Integer Rate;
    private DBConnection db;
    ArrayList<Coupon> coupon_All=null;
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
     
     public ArrayList<Coupon> getAll(){
        try {
            coupon_All=new ArrayList<Coupon>();
          ResultSet rs_coupon=db.querys("select * from Coupon order by COUPON_ID");
          while (rs_coupon.next()) {
                 
                      Coupon cop = new Coupon();
                      cop.setCoupon_ID(rs_coupon.getInt("Coupon_ID"));
                      cop.setCoupon_Code(rs_coupon.getString("Coupon_Code"));
                      cop.setRate(rs_coupon.getInt("Rate"));
                      
                      coupon_All.add(cop);
                  }
        } catch (SQLException ex) {
            Logger.getLogger(Coupon.class.getName()).log(Level.SEVERE, null, ex);
        }
        return coupon_All;
     }
     
     public void getNewId(){
         Coupon_ID=db.queryint("select max(COUPON_ID)+1 from Coupon");
     }
}
