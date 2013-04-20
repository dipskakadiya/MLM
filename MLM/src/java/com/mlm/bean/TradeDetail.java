/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

/**
 *
 * @author sai
 */
public class TradeDetail {
    private Integer OrderId;
    private Integer ItemID;
    private String ItemName;
    private Integer Qty;
    private Integer Rate;
    private Integer TGross;
    private Integer TaxPer;
    private Integer Tax;    
    private Integer Total;

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
    
}
