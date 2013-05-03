/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.City;
import com.mlm.bean.Product;
import com.mlm.bean.State;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class CallAjax implements Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        System.out.println("ajex call");
        if (req.getParameter("SubAction").equals("GetProduct")) {
            Product p = new Product();
            ArrayList<Product> Pr_All = p.getAllBYCTG(Integer.parseInt(req.getParameter("id")));
            req.setAttribute("Product", Pr_All);
        } else if (req.getParameter("SubAction").equals("GetState")) {
            State st=new State();
            ArrayList<State> St_All =st.getAll(Integer.parseInt(req.getParameter("id"))); 
            req.setAttribute("State", St_All);
        } else if (req.getParameter("SubAction").equals("GetCity")) {
            City ci=new City();
            ArrayList<City> Ct_All = ci.getAll(Integer.parseInt(req.getParameter("id")));
            req.setAttribute("Cities", Ct_All);
        }
        req.setAttribute("Action", req.getParameter("SubAction"));
        return "Ajax.jsp";
    }
}
