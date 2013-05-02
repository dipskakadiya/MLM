/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.MemberTree;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowMemberChain implements Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        MemberTree MT = new MemberTree(1);
        req.setAttribute("parent", MT.getparent());
        req.setAttribute("node", MT.getnode());
        req.setAttribute("edge", MT.getedge());
        return "Member_chain.jsp";
    }
}
