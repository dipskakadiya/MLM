/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;
import java.util.ArrayList;

/**
 *
 * @author sai
 */
public class Trade {
    private Integer order_id;
    private Integer mem_id;
    private String order_date;
    private Integer T_gross;
    private Integer T_tax;
    private Integer Discount;
    private Integer Total;
    private ArrayList<TradeDetail> Order;
    DBConnection db;
    
    public Trade() {
        T_gross=0;
        T_tax=0;
        Discount=0;
        Total=0;
        db = new DBConnection();
    }
    
    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getMem_id() {
        return mem_id;
    }

    public void setMem_id(Integer mem_id) {
        this.mem_id = mem_id;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public Integer getT_gross() {
        return T_gross;
    }

    public void setT_gross(Integer T_gross) {
        this.T_gross = T_gross;
    }

    public Integer getT_tax() {
        return T_tax;
    }

    public void setT_tax(Integer T_tax) {
        this.T_tax = T_tax;
    }

    public Integer getDiscount() {
        return Discount;
    }

    public void setDiscount(Integer Discount) {
        this.Discount = Discount;
    }

    public Integer getTotal() {
        return Total;
    }

    public void setTotal(Integer Total) {
        this.Total = Total;
    }
    
    public ArrayList<TradeDetail> getOrder() {
        return Order;
    }

    public void setOrder(ArrayList<TradeDetail> Order) {
        this.Order = Order;
    }
    
     //Insert
    public void Insert(){
        // New Trade
            db.queryi("insert into tbl_order values (" + order_id + "," + mem_id + ","+order_date+",0,0,0,0)");
            for (int i = 0; i < Order.size(); i++) {
                Order.get(i).Insert(db);
                T_gross+=Order.get(i).getTGross();
                T_tax+=Order.get(i).getTax();
                Total+=Order.get(i).getTotal();                
            }
            //Coupon
            //if(!req.getParameter("coupan").equals("") && req.getParameter("coupan")!=null){
              // rs = db.querys("select RATE from COUPON where COUPON_CODE=" + req.getParameter("coupan"));
               //Discount=Total*rs.getInt("RATE")/100; 
            //}
            Total-=Discount;
            db.queryi("update tbl_order set T_GROSS="+T_gross+",T_TAX="+T_tax+",DISCOUNT="+Discount+",TOTAL="+Total+" where ORDER_ID="+order_id);
    }
    
    //Update 
    public void Update(){
        db.queryud("");
    }
    //Delete
    public void delete(){
        db.queryud("");
    }

}
