/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Coupon;
import com.mlm.bean.Product;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class DeleteCoupon implements Action {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            Coupon coupon=new Coupon();
                coupon.setCoupon_ID(Integer.parseInt(req.getParameter("did")));
                coupon.delete();
                res.sendRedirect("Controller?Action=ShowCoupon");
        } catch (Exception ex) {
            ex.getMessage();
        }
        return null;
        
    }
    
}
