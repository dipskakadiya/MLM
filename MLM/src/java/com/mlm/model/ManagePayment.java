/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Payment;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HR
 */
public class ManagePayment implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
           try {
            Payment Pr=new Payment();
            Pr.setMem_id(Integer.parseInt(req.getAttribute("cur_user").toString()));
            Pr.setPay_date(req.getParameter("date"));
            Pr.setOrder_id(Integer.parseInt(req.getParameter("Order")));
            System.out.println(req.getParameter("Order"));
            Pr.setAmount(Integer.parseInt(req.getParameter("amount")));
            Pr.setRemark(req.getParameter("remark"));
            
            Pr.Insert();
            res.sendRedirect("Controller?Action=ShowPayment");
        } catch (IOException ex) {
            ex.getMessage();
        }
        return null;
    }
    
}