/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import com.mlm.bean.Product;
import com.mlm.dbutility.DBConnection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowProduct implements Action {
  @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Categories> Cat_All = null;
        ArrayList<Product> Product_All = null;
        Product PRoduct = null;
        //Get All Categories
        Categories Cat = new Categories();
        Cat_All = Cat.getAll();

        //Get All Product 
        Product Pr = new Product();
        Product_All = Pr.getAll();

        if (req.getParameter("uid") != null) {
            //Get Product info for Update
            for (int i = 0; i < Product_All.size(); i++) {
                if (Product_All.get(i).getItemid() == Integer.parseInt(req.getParameter("uid"))) {
                    PRoduct = Product_All.get(i);
                }
            }
        } else {
            //Get Productid for new Product
            PRoduct = new Product();
            PRoduct.getNextID();
        }
        req.setAttribute("Product", PRoduct);
        req.setAttribute("ProductAll", Product_All);
        req.setAttribute("Categories", Cat_All);
        return "Product.jsp";
    }
}
