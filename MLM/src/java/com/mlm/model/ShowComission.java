/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Commission;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ShowComission implements Action{
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Commission> comision_All;
        Commission Com=new Commission();
        comision_All=Com.getAll(Integer.parseInt(req.getAttribute("cur_user").toString()));
        req.setAttribute("com",comision_All);
        return "Comission.jsp";    
    }
    
}
