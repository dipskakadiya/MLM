/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.bean.Member;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sai
 */
public class Demo {
    public static void main(String [ ] args){
        SendMail sm=new SendMail();
        //DBConnection db= DBConnection.db;
        //db.sendmail("hiren_879@yahoo.com", "Testing",  "hi how r u ");
        sm.sendMail("201212030mayur@gmail.com", "hi how r u ");
         
    }
}
