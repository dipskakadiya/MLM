/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Member;
import com.mlm.bean.Product;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class DeleteMember implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            Member m=new Member();
               System.out.println("In delete member ");
               m.setMemid(Integer.parseInt(req.getParameter("did")));
                m.delete();
                res.sendRedirect("Controller?Action=ShowMemeber");
        } catch (Exception ex) {
            ex.getMessage();
        }
        return null;
    }
    
}
