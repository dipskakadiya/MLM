/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Order;
import com.mlm.bean.OrderDetail;
import com.mlm.dbutility.DBConnection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ManageTrade implements Action {

    DBConnection db;

    public ManageTrade() {
        db = new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        String[] grid = req.getParameterValues("mygrid");
        try {
            
           
            Order Tr=new Order();
            ArrayList<OrderDetail> Td=new ArrayList<OrderDetail>();
            Tr.setOrder_id(Integer.parseInt(req.getParameter("orderid")));
            Tr.setMem_id(Integer.parseInt(req.getAttribute("cur_user").toString()));
            Tr.setOrder_date("sysdate");
            for (int i = 0; i < grid.length; i = i + 2) {
                OrderDetail Temp_TD=new OrderDetail();
                Temp_TD.setOrderId(Tr.getOrder_id());
                Temp_TD.setItemID(Integer.parseInt(grid[i]));
                Temp_TD.setQty(Integer.parseInt(grid[i + 1]));
                Td.add(Temp_TD);
            }
            Tr.setOrder(Td);
            if(req.getParameter("SubAction").equals("Update")){
                Tr.Update();
            }else{  
                // New Order
                Tr.Insert();
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return "Controller?Action=ShowTrade";
    }
}
