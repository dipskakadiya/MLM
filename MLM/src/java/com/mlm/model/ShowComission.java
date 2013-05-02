/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Comission;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ShowComission implements Action{
    
    DBConnection db;
    
    public ShowComission()
    {
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Comission> comission_All=null;
        
        comission_All=new ArrayList<Comission>();
        String date=null;
        int i=0;
        ResultSet rs_comission=db.querys("select * from Commission order by COM_ID");
        try {
            while (rs_comission.next()) {
                
                    Comission com = new Comission();
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
        
        req.setAttribute("com",comission_All);
        return "Comission.jsp";    
    }
    
}
