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
import org.apache.catalina.connector.Request;

/**
 *
 * @author HR
 */
public class DeleteCategory implements Action {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try{
            Categories Cat = new Categories();
            Cat.setCatid(Integer.parseInt(req.getParameter("did")));
            Cat.delete();
            res.sendRedirect("Controller?Action=ShowCategory");
        }
        catch (IOException ex) {
            ex.getMessage();
        }
    return null;
    }
}
