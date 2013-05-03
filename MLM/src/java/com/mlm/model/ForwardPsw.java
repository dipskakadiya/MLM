/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Member;
import com.mlm.bean.SendMail;
import com.mlm.bean.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ForwardPsw implements Action{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        String email=req.getParameter("email");
        System.out.print(email);
        Member mem=new Member();
        User user=mem.getPass(email);
        SendMail Sm=new SendMail();
        if(user.getPassword()!=null){
            Sm.sendMail(email,"Your Password="+user.getPassword());
        }
        return "index.jsp";
    }
    
}
