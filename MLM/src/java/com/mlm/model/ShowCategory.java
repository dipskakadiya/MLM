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
import java.util.Locale.Category;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HR
 */
public class ShowCategory implements Action {

    DBConnection db;

    public ShowCategory() {
        db = new DBConnection();
    }

    
    
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Categories> Cat_All = null;
        Categories Cr = null;
        int Cat_id = 0;
        try{
      
            ResultSet Rs_Cat = db.querys("select * from TBL_CTG order by CTG_ID");
            Cat_All = new ArrayList<Categories>();
            while (Rs_Cat.next()) {
                Categories ct = new Categories();
                ct.setCatid(Rs_Cat.getInt("CTG_ID"));
                ct.setCatname(Rs_Cat.getString("CTG_NAME"));
                Cat_All.add(ct);
            }
            if (req.getParameter("uid") != null) {
                //Get Trade info for Update
                for(int i=0;i<Cat_All.size();i++){
                    if(Cat_All.get(i).getCatid()==Integer.parseInt(req.getParameter("uid"))){
                        Cr=Cat_All.get(i);
                    }
                }
            } else {
                //Get Orderid for new Trade
                Cat_id = db.queryint("select max(CTG_ID)+1 from TBL_CTG");
                Cr = new Categories();
                Cr.setCatid(Cat_id);
            }
            
        }catch (SQLException ex) {
            ex.getMessage();
        }
        req.setAttribute("Categories", Cat_All);
        req.setAttribute("Category", Cr);
        return "Category.jsp";
    }
    
}
