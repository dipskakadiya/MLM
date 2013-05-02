/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ManageMember implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            Member Mr=new Member();
            Mr.setMemid(Integer.parseInt(req.getParameter("userid")));
            Mr.setUsername(req.getParameter("username"));
            Mr.setFirstname(req.getParameter("firstname"));
            Mr.setLastname(req.getParameter("lastname"));
            Mr.setBirthdate(req.getParameter("birthdate"));
            Mr.setOptgender(req.getParameter("optgender"));
            Mr.setAddress(req.getParameter("address"));
            Mr.setCity(req.getParameter("city"));
            Mr.setPincode(Integer.parseInt(req.getParameter("pincode")));
            Mr.setState(req.getParameter("state"));
            Mr.setCountry(req.getParameter("country"));
            Mr.setEmail(req.getParameter("email"));
            Mr.setMobile(req.getParameter("mobile"));
            Mr.setImage(req.getParameter("Pimage"));
            Mr.setParent_ID(1);
            if(req.getParameter("SubAction").equals("Update")){
                Mr.Update();
            }else{        
                Mr.Insert();
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return "Controller?Action=ShowMember";
    }
    
}
