/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Coupon;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ShowCoupon implements Action{
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
         ArrayList<Coupon> coupon_All=null;
         
         Coupon cup=null;
        try {
            Coupon Cou=new Coupon();
            coupon_All=Cou.getAll();
             if (req.getParameter("uid") != null) {
                //Get Product info for Update
                for(int i=0;i<coupon_All.size();i++){
                    if(coupon_All.get(i).getCoupon_ID()==Integer.parseInt(req.getParameter("uid"))){
                        System.out.println("I m........");
                        cup=coupon_All.get(i);
                    }
                }
            } else {
                //Get Productid for new Product
                cup = new Coupon();
                cup.getNewId();
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        req.setAttribute("com",coupon_All);
        req.setAttribute("coupon",cup);
        return "Coupon.jsp";
        
    }

   
    
}
