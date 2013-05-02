/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;

/**
 *
 * @author HR
 */
public class Payment {
    
    private int pay_id;
    private int mem_id;
    private int order_id;
    private String pay_date;
    private int amount;
    private String remark;
    private DBConnection db;
    
    public Payment() {
         db = new DBConnection();
    }
    
    public int getAmount() {
        return amount;
    }

    public int getMem_id() {
        return mem_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public String getPay_date() {
        return pay_date;
    }

    public int getPay_id() {
        return pay_id;
    }

    public String getRemark() {
        return remark;
    }
    
    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setMem_id(int mem_id) {
        this.mem_id = mem_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public void setPay_date(String pay_date) {
        this.pay_date = pay_date;
    }

    public void setPay_id(int pay_id) {
        this.pay_id = pay_id;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public void Insert() {
        //db.queryi("insert into PAYMENT values("+itemname+"',"+cur_user+","+OrderID+","+date+","+amount+",'"+remark+"')");
    }
    
    public void delete(){
        
    }
}
