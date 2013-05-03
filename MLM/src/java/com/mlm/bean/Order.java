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
public class Order {

    private Integer order_id;
    private Integer mem_id;
    private String order_date;
    private Integer T_gross;
    private Integer T_tax;
    private Integer Discount;
    private Integer Total;
    private ArrayList<OrderDetail> OrderDetail;
    private ArrayList<Order> Remain_order = null;
    private ArrayList<Order> OrderAll;
    DBConnection db;

    public Order() {
        T_gross = 0;
        T_tax = 0;
        Discount = 0;
        Total = 0;
        db = DBConnection.db;
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

    public ArrayList<OrderDetail> getOrder() {
        return OrderDetail;
    }

    public void setOrder(ArrayList<OrderDetail> OrderDetail) {
        this.OrderDetail = OrderDetail;
    }

    //Insert
    public void Insert() {
        // New Order
        db.queryi("insert into tbl_order values (" + order_id + "," + mem_id + "," + order_date + ",0,0,0,0)");
        for (int i = 0; i < OrderDetail.size(); i++) {
            OrderDetail.get(i).Insert(db);
            T_gross += OrderDetail.get(i).getTGross();
            T_tax += OrderDetail.get(i).getTax();
            Total += OrderDetail.get(i).getTotal();
        }
        //Coupon
        //if(!req.getParameter("coupan").equals("") && req.getParameter("coupan")!=null){
        // rs = db.querys("select RATE from COUPON where COUPON_CODE=" + req.getParameter("coupan"));
        //Discount=Total*rs.getInt("RATE")/100; 
        //}
        Total -= Discount;
        db.queryi("update tbl_order set T_GROSS=" + T_gross + ",T_TAX=" + T_tax + ",DISCOUNT=" + Discount + ",TOTAL=" + Total + " where ORDER_ID=" + order_id);
        Integer Comid=db.queryint("select max(COM_ID)+1 from COMMISSION");
        Double com;
        System.out.println("Comid="+Comid   );
        Integer parent=db.queryint("select PARENT from MEMBER_CHAIN where CHILD="+mem_id);
        com=Total*0.02;
        System.out.println("insert into COMMISSION values("+Comid+","+com+",sysdate,"+com+",'"+order_id+"')");
        db.queryi("insert into COMMISSION values("+Comid+","+mem_id+",sysdate,"+com+",'"+order_id+"')");
        parent=db.queryint("select PARENT from MEMBER_CHAIN where CHILD="+parent);
        if(parent!=null){
            Comid++;
            com=Total*0.04;
            db.queryi("insert into COMMISSION values("+Comid+","+mem_id+",sysdate,"+com+",'"+order_id+"')");
        }
        }

    //Update 
    public void Update() {
        OrderDetail Temp = new OrderDetail();
        Temp.delete(db, order_id);
        for (int i = 0; i < OrderDetail.size(); i++) {
            OrderDetail.get(i).Insert(db);
            T_gross += OrderDetail.get(i).getTGross();
            T_tax += OrderDetail.get(i).getTax();
            Total += OrderDetail.get(i).getTotal();
        }

    }
    //Delete

    public void delete(DBConnection db) {
        OrderDetail Temp = new OrderDetail();
        Temp.delete(db, order_id);
        db.queryud("delete from tbl_order where ORDER_ID=" + order_id);
        db.queryi("update tbl_order set T_GROSS=" + T_gross + ",T_TAX=" + T_tax + ",DISCOUNT=" + Discount + ",TOTAL=" + Total + " where ORDER_ID=" + order_id);
    }

    public ArrayList<Order> getPaymentRemain(Integer mem_id) {
        Remain_order = new ArrayList<Order>();
        ResultSet rs_order = db.querys("select ORDER_ID FROM TBL_ORDER WHERE (ORDER_ID NOT IN (SELECT ORDER_ID FROM PAYMENT)) AND MEM_ID=" + mem_id);
        try {
            while (rs_order.next()) {
                Order temp_order = new Order();
                temp_order.setOrder_id(rs_order.getInt("ORDER_ID"));
                Remain_order.add(temp_order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Remain_order;
    }

    public void getSinglelOrder(Integer orderid) {
        try {
            ResultSet Rs_Tr_order = db.querys("select * from TBL_ORDER where ORDER_ID=" + orderid);
            while (Rs_Tr_order.next()) {
                setOrder_id(Rs_Tr_order.getInt("ORDER_ID"));
                mem_id=Rs_Tr_order.getInt("MEM_ID");
                order_date=Rs_Tr_order.getString("ORDER_DATE");
                T_gross=Rs_Tr_order.getInt("T_GROSS");
                T_tax=Rs_Tr_order.getInt("T_TAX");
                Discount=Rs_Tr_order.getInt("DISCOUNT");
                Total=Rs_Tr_order.getInt("TOTAL");
            }
            //Get Order detail
            OrderDetail OD = new OrderDetail();
            OrderDetail = OD.getAllorder(orderid);
        } catch (Exception ex) {
            ex.getMessage();
        }
    }

    public ArrayList<Order> getAll() {
        try {
            ResultSet rs = db.querys("select * from tbl_order order by order_id");
            OrderAll = new ArrayList<Order>();
            while (rs.next()) {
                Order Or = new Order();
                Or.setOrder_id(rs.getInt("ORDER_ID"));
                Or.setMem_id(rs.getInt("MEM_ID"));
                Or.setOrder_date(rs.getString("ORDER_DATE"));
                Or.setT_gross(rs.getInt("T_GROSS"));
                Or.setT_tax(rs.getInt("T_TAX"));
                Or.setDiscount(rs.getInt("DISCOUNT"));
                Or.setTotal(rs.getInt("TOTAL"));
                OrderAll.add(Or);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return OrderAll;
    }

    public void getNextID() {
        order_id = db.queryint("select max(ORDER_ID)+1 from TBL_ORDER");

    }
}
