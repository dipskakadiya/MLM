/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.dbutility.DBConnection;
import java.awt.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class AddTrade implements Action {

    DBConnection db;

    public AddTrade() {
        db = new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ResultSet rsItem = null,rs=null;
        int TGross=0,Ttax=0,Total,Amount=0,Gross,Tax,Disc=0;
        String[] grid = req.getParameterValues("mygrid");
        try {
            // New Trade
            db.queryi("insert into tbl_order values (" + req.getParameter("orderid") + "," + req.getAttribute("cur_user") + ",sysdate,0,0,0,0)");
            for (int i = 0; i < grid.length; i = i + 2) {
                rsItem = db.querys("select * from TBL_ITEM where ITEM_ID=" + grid[i]);
                rsItem.next();
                Gross=Integer.parseInt(grid[i+1])* rsItem.getInt("RATE");
                Tax=Gross*0/100;
                Total=Gross+Tax;
                 db.queryi("insert into order_detail values (" + req.getParameter("orderid") + "," + grid[i] + "," + grid[i + 1] + "," + rsItem.getInt("RATE") + "," + Gross + "," + Tax + "," + Total + ")");
                TGross+=Gross;
                Ttax+=Tax;
                Amount+=Total;                
            }
            if(!req.getParameter("coupan").equals("") && req.getParameter("coupan")!=null){
               rs = db.querys("select RATE from COUPON where COUPON_CODE=" + req.getParameter("coupan"));
               Disc=Amount*rs.getInt("RATE")/100; 
            }
            Amount-=Disc;
            db.queryi("update tbl_order set T_GROSS="+TGross+",T_TAX="+Ttax+",DISCOUNT="+Disc+",TOTAL="+Amount+" where ORDER_ID="+req.getParameter("orderid"));
                
            //Edit Trade
            
        } catch (SQLException ex) {
            Logger.getLogger(AddTrade.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Controller?Action=ShowTrade";
    }
}
