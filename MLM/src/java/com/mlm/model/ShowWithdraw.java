/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Withdraw;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nadim
 */
public class ShowWithdraw implements Action {
   @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Withdraw> withdraw_All=null;
        Withdraw Wid=new Withdraw();
        withdraw_All=Wid.getAll(Integer.parseInt(req.getAttribute("cur_user").toString()));
        req.setAttribute("withdraw",withdraw_All);
        return "Withdraw.jsp";
        
    }
    
}
