/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Trade;
import com.mlm.bean.TradeDetail;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ManageTrade implements Action {

    DBConnection db;

    public ManageTrade() {
        db = new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        String[] grid = req.getParameterValues("mygrid");
        try {
            
            // New Trade
            Trade Tr=new Trade();
            ArrayList<TradeDetail> Td=new ArrayList<TradeDetail>();
            Tr.setOrder_id(Integer.parseInt(req.getParameter("orderid")));
            Tr.setMem_id(Integer.parseInt(req.getAttribute("cur_user").toString()));
            Tr.setOrder_date("sysdate");
            for (int i = 0; i < grid.length; i = i + 2) {
                TradeDetail Temp_TD=new TradeDetail();
                Temp_TD.setOrderId(Tr.getOrder_id());
                Temp_TD.setItemID(Integer.parseInt(grid[i]));
                Temp_TD.setQty(Integer.parseInt(grid[i + 1]));
                Td.add(Temp_TD);
            }
            Tr.setOrder(Td);
            Tr.Insert();
            
           /* db.queryi("insert into tbl_order values (" + req.getParameter("orderid") + "," + req.getAttribute("cur_user") + ",sysdate,0,0,0,0)");
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
            */
            //Edit Trade
            
        } catch (Exception ex) {
            ex.getMessage();
        }
        return "Controller?Action=ShowTrade";
    }
}
