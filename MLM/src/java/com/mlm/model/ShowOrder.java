/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import com.mlm.bean.Order;
import com.mlm.bean.OrderDetail;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowOrder implements Action {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Categories> Cat_All = null;
        Order Or = null;
        //Get All Categories
        Categories Cat = new Categories();
        Cat_All = Cat.getAll();

        if (req.getParameter("uid") != null) {
            //Get Order info for Update
            Or= new Order();
            Or.getSinglelOrder(Integer.parseInt(req.getParameter("uid")));
            System.out.println("orderid:"+Or.getOrder_id());
            ArrayList<OrderDetail> od=Or.getOrder();
        } else {
            //Get Orderid for new Order
            Or= new Order();
            Or.getNextID();
        }
        req.setAttribute("Trade", Or);
        req.setAttribute("Categories", Cat_All);
        return "Order.jsp";
    }
}
