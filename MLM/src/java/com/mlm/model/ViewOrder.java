/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Order;
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
 * @author sai
 */
public class ViewOrder  implements Action{
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Order> OrderAll;
        Order Or=new Order();
        OrderAll=Or.getAll();
        req.setAttribute("Trade", OrderAll);
        return "Order_All.jsp";
    }
    
    
}
