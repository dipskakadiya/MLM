/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.bean.Product;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author sai
 */
public class Ajax {

    DBConnection db;
    public Ajax(){
        db=new DBConnection();
    }
    
    public ArrayList<Product> getProduct_By_Cat(Integer Cat_id){
        ResultSet rs=db.querys("select * from TBL_ITEM where CTG_ID="+Cat_id);
        ArrayList<Product> Pr_All=new ArrayList<Product>();
        try {
            while(rs.next()){
                Product pr=new Product();
                pr.setItemid(rs.getInt("ITEM_ID"));
                pr.setItemname(rs.getString("ITEM_NAME"));
                pr.setCtgid(rs.getInt("CTG_ID"));
                pr.setStock(rs.getInt("STOCK"));
                pr.setRate(rs.getInt("RATE"));
                pr.setPrelevel(rs.getInt("PREORDER_LEVEL"));
                /*if(rs.getInt("TAX_FLAG")==1){
                    //db.queryint("select  from ")
                }*/
                pr.setTax(0);
                pr.setImg(rs.getString("IMAGE"));
                Pr_All.add(pr);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Ajax.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Pr_All;
    }

   
}