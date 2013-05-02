/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Coupon;
import com.mlm.bean.Member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ManageCoupon implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            Coupon coupon=new Coupon();
            coupon.setCoupon_ID(Integer.parseInt(req.getParameter("couponid")));
            coupon.setCoupon_Code(req.getParameter("coupon_code"));
            coupon.setRate(Integer.parseInt(req.getParameter("rate")));
            
            if(req.getParameter("SubAction").equals("Update")){
                coupon.Update();
            }else{        
                coupon.Insert();
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return "Controller?Action=ShowCoupon";
        
    }
    
}
