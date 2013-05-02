/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.dbutility.DBConnection;
import com.mlm.dbutility.MemberTree;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowMemberChain implements Action{
        DBConnection db;
    public ShowMemberChain() {
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            MemberTree MT=new MemberTree(1);
            req.setAttribute("parent",MT.getparent());
            req.setAttribute("node",MT.getnode());
            req.setAttribute("edge",MT.getedge());
        } catch (Exception ex) {
            ex.getMessage();
        }
        return "Member_chain.jsp";
    }

}
