/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Comission;
import com.mlm.bean.Withdraw;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ShowWithdraw implements Action {

        DBConnection db;
    
    public ShowWithdraw()
    {
        db=new DBConnection();
    }
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Withdraw> withdraw_All=null;
        
        withdraw_All=new ArrayList<Withdraw>();
        String date=null;
        int i=0;
        ResultSet rs_withdraw=db.querys("select * from COM_WITHDRAW order by WITH_ID");
        try {
            while (rs_withdraw.next()) {
                
                    Withdraw wdr = new Withdraw();
                    wdr.setWith_Id(rs_withdraw.getInt("WITH_ID"));
                    wdr.setMem_Id(rs_withdraw.getInt("MEM_ID"));
                    date=rs_withdraw.getString("WITH_DATE");
                    i=date.indexOf(" ");
                    date=date.substring(0, i);
                    System.out.println(date);
                    wdr.setWith_date(date);
                    wdr.setAmount(rs_withdraw.getInt("Amount"));
                    
                    withdraw_All.add(wdr);
                }
        } catch (Exception ex) {
            ex.getMessage();
        }
        
        req.setAttribute("withdraw",withdraw_All);
        return "Withdraw.jsp";
        
    }
    
}
