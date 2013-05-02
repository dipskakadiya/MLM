/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

/**
 *
 * @author Nadim
 */
public class Comission {
    Integer COM_ID;
    Integer MEM_ID;
    String COM_Date;
    Integer Amount;
    String Remarks;

    public Integer getCOM_ID() {
        return COM_ID;
    }

    public void setCOM_ID(Integer COM_ID) {
        this.COM_ID = COM_ID;
    }

    public Integer getMEM_ID() {
        return MEM_ID;
    }

    public void setMEM_ID(Integer MEM_ID) {
        this.MEM_ID = MEM_ID;
    }

    public String getCOM_Date() {
        return COM_Date;
    }

    public void setCOM_Date(String COM_Date) {
        this.COM_Date = COM_Date;
    }

    public Integer getAmount() {
        return Amount;
    }

    public void setAmount(Integer Amount) {
        this.Amount = Amount;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String Remarks) {
        this.Remarks = Remarks;
    }
    
    
}
