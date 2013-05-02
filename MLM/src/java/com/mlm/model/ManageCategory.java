/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HR
 */
public class ManageCategory implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
           try {
            Categories Cr=new Categories();
            Cr.setCatid(Integer.parseInt(req.getParameter("CatID")));
            Cr.setCatname(req.getParameter("CatName"));
            if(req.getParameter("SubAction").equals("Update")){
                Cr.Update();
            }else{        
                Cr.Insert();
            }
            res.sendRedirect("Controller?Action=ShowCategory");
        } catch (IOException ex) {
            ex.getMessage();
        }
        return null;
    }
    
}
