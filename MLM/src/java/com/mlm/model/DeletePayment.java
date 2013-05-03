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
public class DeletePayment implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            Payment Pay=new Payment();
                Pay.setPay_id(Integer.parseInt(req.getParameter("did")));
                Pay.delete();
                res.sendRedirect("Controller?Action=ShowPayment");
        } catch (IOException ex) {
            ex.getMessage();
        }
        return null;
}
    
}
