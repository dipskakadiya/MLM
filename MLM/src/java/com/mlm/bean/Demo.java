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
        DBConnection db= DBConnection.db;
        String str="";
        ResultSet Rs=db.querys("select ITEM_NAME,(select sum(QTY) from ORDER_DETAIL OD where TI.ITEM_ID=OD.ITEM_ID)as Total  from TBL_ITEM TI");
        try {
            while(Rs.next()){
                if(Rs.getString("Total")!=null){
                    str+="<set label='"+Rs.getString("ITEM_NAME")+"' value='"+Rs.getString("Total")+"' />";
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Demo.class.getName()).log(Level.SEVERE, null, ex);
        }
            System.out.print(str);
         
    }
}
