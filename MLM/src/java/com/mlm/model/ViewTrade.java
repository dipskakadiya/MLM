/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Trade;
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
public class ViewTrade  implements Action{

     DBConnection db;
    public ViewTrade(){
        db=new DBConnection();
    }
    
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ResultSet rs=db.querys("select * from tbl_order order by order_id");
        ArrayList<Trade> Tr_All=new ArrayList<Trade>();
        try {
            while(rs.next()){
                Trade tr=new Trade();
                tr.setOrder_id(rs.getInt("ORDER_ID"));
                tr.setMem_id(rs.getInt("MEM_ID"));
                tr.setOrder_date(rs.getString("ORDER_DATE"));
                tr.setT_gross(rs.getInt("T_GROSS"));
                tr.setT_tax(rs.getInt("T_TAX"));
                tr.setDiscount(rs.getInt("DISCOUNT"));
                tr.setTotal(rs.getInt("TOTAL"));
                Tr_All.add(tr);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ViewTrade.class.getName()).log(Level.SEVERE, null, ex);
        }
        req.setAttribute("Trade", Tr_All);
        return "Trade_All.jsp";
    }
    
    
}
