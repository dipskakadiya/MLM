/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author sai
 */
public class Chart {
    DBConnection db;
    public Chart() {
        db= DBConnection.db;
    }
    public String getItemChart(){
        String str="";
        try {
            
            ResultSet Rs=db.querys("select ITEM_NAME,(select sum(QTY) from ORDER_DETAIL OD where TI.ITEM_ID=OD.ITEM_ID)as Total  from TBL_ITEM TI");
            while(Rs.next()){
                if(Rs.getString("Total")!=null){
                    str+="<set label='"+Rs.getString("ITEM_NAME")+"' value='"+Rs.getString("Total")+"' />";
                }
            }
        } catch (Exception ex) {
           ex.getMessage();
        }
        return str;
    }
    
}
