/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.dbutility.DBConnection;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author sai
 */
public class AddMemberAction implements Action{
    DBConnection db;
    public AddMemberAction(){
        db=new DBConnection();
    }
    
    @Override
    public void execute(HttpServletRequest request) {
        db.queryiu("insert into usermaster values(6,'"+request.getParameter("username")+"')");
        
    }
    
}
