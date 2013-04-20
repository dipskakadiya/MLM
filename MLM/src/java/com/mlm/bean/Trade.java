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
    private Integer order_id;
    private Integer mem_id;
    private String order_date;
    private Integer T_gross;
    private Integer T_tax;
    private Integer Discount;
    private Integer Total;

    public Trade() {
        T_gross=0;
        T_tax=0;
        Discount=0;
        Total=0;
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

}
