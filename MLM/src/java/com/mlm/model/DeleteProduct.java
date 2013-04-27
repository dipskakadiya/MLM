/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Product;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class DeleteProduct implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        Product Pr=new Product();
            Pr.setItemid(Integer.parseInt(req.getParameter("did")));
            Pr.delete();
            return "Controller?Action=ShowProduct";
    }
    
}
