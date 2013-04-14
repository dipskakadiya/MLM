/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.dbutility.DBConnection;
import java.awt.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class AddTradeAction implements Action
{
    DBConnection db;
    public AddTradeAction() {
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        String[] grid=req.getParameterValues("mygrid");
        //db.queryiu("insert into tbl_order values ("+req.getParameter("orderid") +","+req.getAttribute("cur_user") +",sysdate,"+req.getParameter("T_GrossAll") +","+req.getParameter("T_TaxAll") +","+req.getParameter("Discount") +","+req.getParameter("T_AmountAll") +")");
        System.out.println("insert into tbl_order values ("+req.getParameter("orderid") +","+req.getAttribute("cur_user") +",sysdate,"+req.getParameter("T_GrossAll") +","+req.getParameter("T_TaxAll") +","+req.getParameter("Discount") +","+req.getParameter("T_AmountAll") +")"); 
        //db.queryiu("insert into order_detail values ("+req.getParameter("orderid") +","+grid[i]+","+grid[i+1]+","+grid[i+2]+","+grid[i+3]+","+grid[i+4]+","+grid[i+5]+")");
        for(int i=0;i<grid.length;i=i+6){
            System.out.println("insert into order_detail values ("+req.getParameter("orderid") +","+grid[i]+","+grid[i+1]+","+grid[i+2]+","+grid[i+3]+","+grid[i+4]+","+grid[i+5]+")");
        }
        return "Product.jsp";
    }    
}
