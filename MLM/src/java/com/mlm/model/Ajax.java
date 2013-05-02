/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Product;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class Ajax implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Product> PrAll;
        Product Pr=new Product();
        System.out.println(req.getParameter("id"));
        PrAll=Pr.getAllBYCTG(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("Product", PrAll);
        req.setAttribute("Action", req.getParameter("SubAction"));
        return "Ajax.jsp";
    }
    
}
