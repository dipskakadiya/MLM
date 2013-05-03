/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HR
 */
public class MemberProfile implements Action {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        HttpSession session=req.getSession();
        
        Integer id=(Integer) session.getAttribute("sessionMemid");
        System.out.println("Nadim...................");
        System.out.println(id);
        Member mem=new Member();
        
        mem=mem.getOneMember(id);
        
        System.out.println(mem.getFirstname());
        req.setAttribute("member", mem);
        return "Profile.jsp";
    }
    
}
