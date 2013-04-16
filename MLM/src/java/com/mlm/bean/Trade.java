/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

/**
 *
 * @author sai
 */
public class Trade {
    private int order_id;
    private int mem_id;
    private String order_date;
    private int T_gross;
    private int T_tax;
    private int Discount;
    private int Total;

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getMem_id() {
        return mem_id;
    }

    public void setMem_id(int mem_id) {
        this.mem_id = mem_id;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public int getT_gross() {
        return T_gross;
    }

    public void setT_gross(int T_gross) {
        this.T_gross = T_gross;
    }

    public int getT_tax() {
        return T_tax;
    }

    public void setT_tax(int T_tax) {
        this.T_tax = T_tax;
    }

    public int getDiscount() {
        return Discount;
    }

    public void setDiscount(int Discount) {
        this.Discount = Discount;
    }

    public int getTotal() {
        return Total;
    }

    public void setTotal(int Total) {
        this.Total = Total;
    }
}
