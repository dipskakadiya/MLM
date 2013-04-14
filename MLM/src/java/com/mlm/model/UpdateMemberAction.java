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
public class UpdateMemberAction implements Action{
    DBConnection db;
    public UpdateMemberAction(){
        db=new DBConnection();
    }
    
    @Override
    public void execute(Object objbean) {
          db.queryiu("");
    }
    
}
