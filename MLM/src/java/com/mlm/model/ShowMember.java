/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Country;
import com.mlm.bean.Member;
import com.mlm.dbutility.DBConnection;
import com.mlm.dbutility.MemberTree;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowMember implements Action {

    DBConnection db;

    public ShowMember() {
        db = new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Member> Member_All = null;
        ArrayList<Country> Country_All = null;
        Member mem = null;
        Integer Mem_id = null;
        try {
            //Get All Member 
            MemberTree MT = new MemberTree();
            Member_All = MT.GetList(1);
            
            //Get All Country
            Country_All=new ArrayList<Country>();
            ResultSet Rs_Country = db.querys("select * from COUNTRY order by CO_ID");
            while (Rs_Country.next()) {
                Country cou = new Country();
                cou.setCou_id(Rs_Country.getInt("CO_ID"));
                cou.setCountry(Rs_Country.getString("CO_NAME"));
                Country_All.add(cou);
            }
            if (req.getParameter("uid") != null) {
                //Get Member info for Update
                for (int i = 0; i < Member_All.size(); i++) {
                    if (Member_All.get(i).getMemid() == Integer.parseInt(req.getParameter("uid"))) {
                        mem = Member_All.get(i);
                    }
                }
            } else {
                //Get MemberID for new Member
                Mem_id = db.queryint("select max(MEM_ID)+1 from TBL_MEMBER");
                mem = new Member();
                mem.setMemid(Mem_id);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        req.setAttribute("Member", mem);
        req.setAttribute("MemberAll", Member_All);
        req.setAttribute("Countries", Country_All);
        return "Member.jsp";
    }
}
