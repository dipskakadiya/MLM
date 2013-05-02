/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.ResultSet;
import java.util.ArrayList;

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
    private ArrayList<Payment> AllPayment= null;   
    
    public Payment() {
         db = DBConnection.db;
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
        db.queryi("insert into PAYMENT values("+pay_id+","+mem_id+","+order_id+",'12-oct-2012',"+amount+",'"+remark+"')");
    }
        
    public void delete(){
        db.queryud("delete from PAYMENT where 	PAY_ID="+pay_id);
    }
    
    public ArrayList<Payment> getAll(){
        try {
            AllPayment = new ArrayList<Payment>();
                ResultSet rs = db.querys("select * from PAYMENT");
                while(rs.next()){
                    Payment Pay_Obj = new Payment();
                    Pay_Obj.setAmount(rs.getInt("AMOUNT"));
                    Pay_Obj.setMem_id(rs.getInt("MEM_ID"));
                    Pay_Obj.setOrder_id(rs.getInt("ORDER_ID"));
                    Pay_Obj.setPay_date(rs.getString("PAY_DATE"));
                    Pay_Obj.setPay_id(rs.getInt("PAY_ID"));
                    Pay_Obj.setRemark(rs.getString("REMARK"));
                    AllPayment.add(Pay_Obj);
                }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return AllPayment;
    }
    
    public void getNextID(){
        pay_id=db.queryint("select max(PAY_ID)+1 from PAYMENT");
    }
    
}
