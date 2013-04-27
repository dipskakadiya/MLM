/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import com.mlm.bean.Product;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowProduct implements Action {

    DBConnection db;

    public ShowProduct() {
        db = new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Categories> Cat_All = null;
        ArrayList<Product> Product_All = null;
        Product Pr = null;
        Integer Order_id = null;
        try {
            //Get All Categories
            ResultSet Rs_Cat = db.querys("select * from TBL_CTG order by CTG_NAME");
            Cat_All = new ArrayList<Categories>();
            while (Rs_Cat.next()) {
                Categories ct = new Categories();
                ct.setCatid(Rs_Cat.getInt("CTG_ID"));
                ct.setCatname(Rs_Cat.getString("CTG_NAME"));
                Cat_All.add(ct);
            }
            //Get All Product 
            ResultSet Rs_Product = db.querys("select TI.*,TC.CTG_NAME from TBL_ITEM TI,TBL_CTG TC where TI.CTG_ID=TC.CTG_ID order by TI.ITEM_ID");
            Product_All = new ArrayList<Product>();
            while (Rs_Product.next()) {
                Product T_pr = new Product();
                T_pr.setItemid(Rs_Product.getInt("ITEM_ID"));
                T_pr.setItemname(Rs_Product.getString("ITEM_NAME"));
                T_pr.setStock(Rs_Product.getInt("STOCK"));
                T_pr.setRate(Rs_Product.getInt("RATE"));
                T_pr.setTax(0);
                T_pr.setCtgid(Rs_Product.getInt("CTG_ID"));
                T_pr.setPrelevel(Rs_Product.getInt("PREORDER_LEVEL"));
                T_pr.setCtgname(Rs_Product.getString("CTG_NAME"));
                T_pr.setImg(Rs_Product.getString("IMAGE"));
                Product_All.add(T_pr);

            }
            if (req.getParameter("uid") != null) {
                //Get Trade info for Update
                for(int i=0;i<Product_All.size();i++){
                    if(Product_All.get(i).getItemid()==Integer.parseInt(req.getParameter("uid"))){
                        Pr = new Product();
                        Pr=Product_All.get(i);
                    }
                }
            } else {
                //Get Orderid for new Trade
                Order_id = db.queryint("select max(ITEM_ID)+1 from TBL_ITEM");
                Pr = new Product();
                Pr.setItemid(Order_id);
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        req.setAttribute("Product", Pr);
        req.setAttribute("ProductAll", Product_All);
        req.setAttribute("Categories", Cat_All);
        return "Product.jsp";
    }
}
