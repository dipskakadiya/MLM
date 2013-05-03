/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Chart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class CallDashboard implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
       System.out.print("hi");
       Chart ch=new Chart();
       req.setAttribute("XmlKEy1",ch.getItemChart());
       return "Dashboard.jsp";
               
    }
    
}
