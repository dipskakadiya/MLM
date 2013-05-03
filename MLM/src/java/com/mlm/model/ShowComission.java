/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Commission;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jrockit.jfr.tools.ConCatRepository;

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
        ArrayList<Commission> comision_All;
        Commission Com=new Commission();
        comision_All=Com.getAll();
        req.setAttribute("com",comision_All);
        return "Comission.jsp";    
    }
    
}
