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
        ArrayList<OrderDetail> TRD_All = null;
        Order Order = null;
        //Get All Categories
        Categories Cat = new Categories();
        Cat_All = Cat.getAll();

        if (req.getParameter("uid") != null) {
            //Get Order info for Update
            Order = new Order();
            Order.getSinglelOrder(Integer.parseInt(req.getParameter("uid")));
        } else {
            //Get Orderid for new Order
            Order = new Order();
            Order.getNextID();
        }
        req.setAttribute("Trade", Order);
        req.setAttribute("TradeDetail", TRD_All);
        req.setAttribute("Categories", Cat_All);
        return "Order.jsp";
    }
}
