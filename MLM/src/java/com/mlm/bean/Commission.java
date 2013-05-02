/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Nadim
 */
public class Commission {
    Integer COM_ID;
    Integer MEM_ID;
    String COM_Date;
    Integer Amount;
    String Remarks;
    DBConnection db;
    ArrayList<Commission> comission_All;
    public Commission() {
        db= DBConnection.db;
    }
    
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
    
    public ArrayList<Commission> getAll(){
        comission_All=new ArrayList<Commission>();
        String date=null;
        int i=0;
        ResultSet rs_comission=db.querys("select * from Commission order by COM_ID");
        try {
            while (rs_comission.next()) {
                
                    Commission com = new Commission();
                    com.setCOM_ID(rs_comission.getInt("COM_ID"));
                    com.setMEM_ID(rs_comission.getInt("MEM_ID"));
                    date=rs_comission.getString("COM_Date");
                    i=date.indexOf(" ");
                    date=date.substring(0, i);
                    System.out.println(date);
                    com.setCOM_Date(date);
                    com.setAmount(rs_comission.getInt("Amount"));
                    if(rs_comission.getString("Remark")!=null)
                    {
                         com.setRemarks(rs_comission.getString("Remark"));
                    }
                    comission_All.add(com);
                }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return comission_All;
    }
}
