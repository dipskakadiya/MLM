/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.dbutility.DBConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class UpdateMemberAction implements Action{
    DBConnection db;
    public UpdateMemberAction(){
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
         db.queryiu("update fnvn "); 
         return "";
    }
}
