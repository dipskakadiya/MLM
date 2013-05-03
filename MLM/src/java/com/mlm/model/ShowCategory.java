/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HR
 */
public class ShowCategory implements Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Categories> Cat_All = null;
        Categories Cr = null;
            Categories cat=new Categories();
            Cat_All=cat.getAll();
            if (req.getParameter("uid") != null) {
                //Get Trade info for Update
                for(int i=0;i<Cat_All.size();i++){
                    if(Cat_All.get(i).getCatid()==Integer.parseInt(req.getParameter("uid"))){
                        Cr=Cat_All.get(i);
                    }
                }
            } else {
                //Get Orderid for new Trade
                Cr = new Categories();
                Cr.getNewID();
            }
        req.setAttribute("Categories", Cat_All);
        req.setAttribute("Category", Cr);
        return "Category.jsp";
    }
}
