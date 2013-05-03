/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Commission;
import com.mlm.bean.Coupon;
import com.mlm.bean.Product;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ShowCoupon implements Action{
     DBConnection db;
    
    public ShowCoupon()
    {
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
         ArrayList<Coupon> coupon_All=null;
         
         Coupon cup=null;
         Integer coupon_id=null;
        coupon_All=new ArrayList<Coupon>();
        ResultSet rs_coupon=db.querys("select * from Coupon order by COUPON_ID");
        try {
            while (rs_coupon.next()) {
               
                    Coupon cop = new Coupon();
                    cop.setCoupon_ID(rs_coupon.getInt("Coupon_ID"));
                    cop.setCoupon_Code(rs_coupon.getString("Coupon_Code"));
                    cop.setRate(rs_coupon.getInt("Rate"));
                    
                    coupon_All.add(cop);
                }
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
                coupon_id = db.queryint("select max(COUPON_ID)+1 from Coupon");
                System.out.println(coupon_id);
                cup = new Coupon();
                cup.setCoupon_ID(coupon_id);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        
        req.setAttribute("com",coupon_All);
        req.setAttribute("coupon",cup);
        return "Coupon.jsp";
        
    }

   
    
}
