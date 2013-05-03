/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowForwardPsw implements Action
{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        return "RecoveryPass.jsp";
    }
    
}
