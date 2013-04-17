/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowTrade implements Action{
    DBConnection db;
    public ShowTrade(){
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
         ResultSet rs=db.querys("select * from TBL_CTG order by CTG_NAME"); 
         ArrayList<Categories> Cat_All=new ArrayList<Categories>();
         try {
            while(rs.next()){
                Categories ct=new Categories();
                ct.setCatid(rs.getInt("CTG_ID"));
                ct.setCatname(rs.getString("CTG_NAME"));
                Cat_All.add(ct);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowTrade.class.getName()).log(Level.SEVERE, null, ex);
        }
         req.setAttribute("Categories",Cat_All);
         return "Trade.jsp";
    }
}
