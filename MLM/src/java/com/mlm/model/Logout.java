/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sai
 */
public class Logout implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
            HttpSession session = req.getSession();
            session.invalidate();
        return "index.jsp";
    }
    
}
