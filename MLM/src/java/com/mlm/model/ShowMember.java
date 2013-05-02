/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Country;
import com.mlm.bean.Member;
import com.mlm.bean.MemberTree;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowMember implements Action {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Member> Member_All = null;
        ArrayList<Country> Country_All = null;
        Member mem = null;
        Integer Mem_id = null;
        //Get All Member 
        MemberTree MT = new MemberTree(1);
        Member_All = MT.GetList();

        //Get All Country
        Country Cou = new Country();
        Country_All = Cou.getAll();

        if (req.getParameter("uid") != null) {
            //Get Member info for Update
            for (int i = 0; i < Member_All.size(); i++) {
                if (Member_All.get(i).getMemid() == Integer.parseInt(req.getParameter("uid"))) {
                    mem = Member_All.get(i);
                }
            }
        } else {
            //Get MemberID for new Member
            mem = new Member();
            mem.getNextID();
        }
        req.setAttribute("Member", mem);
        req.setAttribute("MemberAll", Member_All);
        req.setAttribute("Countries", Country_All);
        return "Member.jsp";
    }
}
