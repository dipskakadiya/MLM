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
public class Withdraw {

    private Integer With_Id;
    private Integer Mem_Id;
    private String With_date;
    private Integer Amount;
    private ArrayList<Withdraw> withdraw_All;
    DBConnection db;

    public Withdraw() {
        db= DBConnection.db;
    }
    
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

    public ArrayList<Withdraw> getAll() {
        try {
            withdraw_All = new ArrayList<Withdraw>();
            String date = null;
            int i = 0;
            ResultSet rs_withdraw = db.querys("select * from COM_WITHDRAW order by WITH_ID");
            while (rs_withdraw.next()) {

                Withdraw wdr = new Withdraw();
                wdr.setWith_Id(rs_withdraw.getInt("WITH_ID"));
                wdr.setMem_Id(rs_withdraw.getInt("MEM_ID"));
                date = rs_withdraw.getString("WITH_DATE");
                i = date.indexOf(" ");
                date = date.substring(0, i);
                System.out.println(date);
                wdr.setWith_date(date);
                wdr.setAmount(rs_withdraw.getInt("Amount"));

                withdraw_All.add(wdr);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return withdraw_All;
    }
}
