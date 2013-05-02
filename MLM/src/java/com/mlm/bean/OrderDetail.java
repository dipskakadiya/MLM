/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author sai
 */
public class OrderDetail {

    private Integer OrderId;
    private Integer ItemID;
    private String ItemName;
    private Integer Qty;
    private Integer Rate;
    private Integer TGross;
    private Integer TaxPer;
    private Integer Tax;
    private Integer Total;
    private ArrayList<OrderDetail> OrderDetail;
    DBConnection db;

    public OrderDetail() {
        db = DBConnection.db;
    }

    public Integer getOrderId() {
        return OrderId;
    }

    public void setOrderId(Integer OrderId) {
        this.OrderId = OrderId;
    }

    public Integer getItemID() {
        return ItemID;
    }

    public void setItemID(Integer ItemID) {
        this.ItemID = ItemID;
    }

    public String getItemName() {
        return ItemName;
    }

    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    public Integer getQty() {
        return Qty;
    }

    public void setQty(Integer Qty) {
        this.Qty = Qty;
    }

    public Integer getRate() {
        return Rate;
    }

    public void setRate(Integer Rate) {
        this.Rate = Rate;
    }

    public Integer getTGross() {
        return TGross;
    }

    public void setTGross(Integer TGross) {
        this.TGross = TGross;
    }

    public Integer getTaxPer() {
        return TaxPer;
    }

    public void setTaxPer(Integer TaxPer) {
        this.TaxPer = TaxPer;
    }

    public Integer getTax() {
        return Tax;
    }

    public void setTax(Integer Tax) {
        this.Tax = Tax;
    }

    public Integer getTotal() {
        return Total;
    }

    public void setTotal(Integer Total) {
        this.Total = Total;
    }

    //Insert
    public void Insert(DBConnection db) {
        try {
            ResultSet rsItem = db.querys("select TI.RATE,(select sum(CT.TAX) from CTG_TAX CT where CT.CTG_ID=TI.CTG_ID) as Tax from TBL_ITEM TI where TI.ITEM_ID=" + ItemID);
            rsItem.next();
            Rate = rsItem.getInt("RATE");
            TGross = Qty * Rate;
            Tax = TGross * rsItem.getInt("Tax") / 100;
            Total = TGross + Tax;
            db.queryi("insert into order_detail values (" + OrderId + "," + ItemID + "," + Qty + "," + Rate + "," + TGross + "," + Tax + "," + Total + ")");
        } catch (Exception ex) {
            ex.getMessage();
        }
    }

    public void delete(DBConnection db, Integer Oid) {
        System.out.println("delete from order_detail where order_detail=" + Oid);
        db.queryud("delete from order_detail where ORDER_ID=" + Oid);
    }

    public ArrayList<OrderDetail> getAllorder(int orderid) {
        try {
            OrderDetail=new ArrayList<OrderDetail>();
            OrderDetail TODetail;
            ResultSet Rs_order_detail = db.querys("select * from ORDER_DETAIL OD where ORDER_ID=" + orderid);
            while (Rs_order_detail.next()) {
                TODetail = new OrderDetail();
                TODetail.setOrderId(Rs_order_detail.getInt("ORDER_ID"));
                TODetail.setItemID(Rs_order_detail.getInt("ITEM_ID"));
                TODetail.setItemName("Dips");
                TODetail.setQty(Rs_order_detail.getInt("QTY"));
                TODetail.setRate(Rs_order_detail.getInt("RATE"));
                TODetail.setTGross(Rs_order_detail.getInt("T_GROSS"));
                TODetail.setTax(Rs_order_detail.getInt("TAX"));
                TODetail.setTaxPer(0);
                TODetail.setTotal(Rs_order_detail.getInt("TOTAL"));
                OrderDetail.add(TODetail);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return OrderDetail;
    }
}
