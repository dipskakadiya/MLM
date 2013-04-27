    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Product;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ManageProduct implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            Product Pr=new Product();
            Pr.setItemid(Integer.parseInt(req.getParameter("item_code")));
            Pr.setItemname(req.getParameter("item_name"));
            Pr.setCtgid(Integer.parseInt(req.getParameter("Category")));
            Pr.setStock(Integer.parseInt(req.getParameter("stock")));
            Pr.setRate(Integer.parseInt(req.getParameter("salesrate")));
            Pr.setPrelevel(Integer.parseInt(req.getParameter("reorderlevel")));
            Pr.setImg(req.getParameter("ProductImage"));
            if(req.getParameter("SubAction").equals("Update")){
                Pr.Update();
            }else{        
                Pr.Insert();
            }
            res.sendRedirect("Controller?Action=ShowProduct");
        } catch (IOException ex) {
            ex.getMessage();
        }
        return null;
    }
}
