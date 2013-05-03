/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

/**
 *
 * @author Nadim
 */
public class Withdraw {
    private Integer With_Id;
    private Integer Mem_Id;

    public Integer getWith_Id() {
        return With_Id;
    }

    public void setWith_Id(Integer With_Id) {
        this.With_Id = With_Id;
    }

    public Integer getMem_Id() {
        return Mem_Id;
    }

    public void setMem_Id(Integer Mem_Id) {
        this.Mem_Id = Mem_Id;
    }

    public String getWith_date() {
        return With_date;
    }

    public void setWith_date(String With_date) {
        this.With_date = With_date;
    }

    public Integer getAmount() {
        return Amount;
    }

    public void setAmount(Integer Amount) {
        this.Amount = Amount;
    }
    private String With_date;
    private Integer Amount;
    
}
