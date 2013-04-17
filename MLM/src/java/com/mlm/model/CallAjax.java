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
public class CallAjax implements Action{

    Ajax a;
    public CallAjax() {
        a=new Ajax();
    }
    
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        if(req.getParameter("SubAction").equals("GetProduct")){
            ArrayList<Product> Pr_All=a.getProduct_By_Cat(Integer.parseInt(req.getParameter("id")));
            req.setAttribute("Product",Pr_All);
        }
        req.setAttribute("Action",req.getParameter("SubAction"));
        return "Ajax.jsp";
    }
    
}
