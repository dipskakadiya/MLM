/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Order;
import com.mlm.bean.Payment;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HR
 */
public class ShowPayment implements Action {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Payment> AllPayment = null;
        ArrayList<Order> all_order = null;

        //Order_ID resultset
        Order Or = new Order();
        all_order = Or.getPaymentRemain(Integer.parseInt(req.getAttribute("cur_user").toString()));
        //Payment Resultset
        Payment Py = new Payment();
        AllPayment = Py.getAll();

        Payment Pr = new Payment();
        Pr.getNextID();

        req.setAttribute("AllPayment", AllPayment);
        req.setAttribute("Order", all_order);
        req.setAttribute("payID", Pr);
        return "Payment.jsp";
    }
}