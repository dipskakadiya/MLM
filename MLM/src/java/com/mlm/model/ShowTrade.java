/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Categories;
import com.mlm.bean.Order;
import com.mlm.bean.OrderDetail;
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
public class ShowTrade implements Action {

    DBConnection db;

    public ShowTrade() {
        db = new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ArrayList<Categories> Cat_All=null;
        ArrayList<OrderDetail> TRD_All=null;
        Integer Order_id= null;
        Order tr=null;
        OrderDetail TrD=null;
        try {
            //Get All Categories
            ResultSet rs = db.querys("select * from TBL_CTG order by CTG_NAME");
            Cat_All = new ArrayList<Categories>();
            while (rs.next()) {
                Categories ct = new Categories();
                ct.setCatid(rs.getInt("CTG_ID"));
                ct.setCatname(rs.getString("CTG_NAME"));
                Cat_All.add(ct);
            }
            if (req.getParameter("uid") != null) {
                //Get Order info for Update
                ResultSet Rs_Tr_order = db.querys("select * from TBL_ORDER where ORDER_ID=" + req.getParameter("uid"));
                while(Rs_Tr_order.next()){
                    tr=new Order();
                    tr.setOrder_id(Rs_Tr_order.getInt("ORDER_ID"));
                    tr.setMem_id(Rs_Tr_order.getInt("MEM_ID"));
                    tr.setOrder_date(Rs_Tr_order.getString("ORDER_DATE"));
                    tr.setT_gross(Rs_Tr_order.getInt("T_GROSS"));
                    tr.setT_tax(Rs_Tr_order.getInt("T_TAX"));
                    tr.setDiscount(Rs_Tr_order.getInt("DISCOUNT"));
                    tr.setTotal(Rs_Tr_order.getInt("TOTAL"));
                }
                //Get Order Detail
                TRD_All=new ArrayList<OrderDetail>();
                ResultSet Rs_order_detail = db.querys("select * from ORDER_DETAIL OD where ORDER_ID=" + req.getParameter("uid"));
                while(Rs_order_detail.next()){
                    TrD=new OrderDetail();
                    TrD.setOrderId(Rs_order_detail.getInt("ORDER_ID"));
                    TrD.setItemID(Rs_order_detail.getInt("ITEM_ID"));
                    TrD.setItemName("Dips");
                    TrD.setQty(Rs_order_detail.getInt("QTY"));
                    TrD.setRate(Rs_order_detail.getInt("RATE"));
                    TrD.setTGross(Rs_order_detail.getInt("T_GROSS"));
                    TrD.setTax(Rs_order_detail.getInt("TAX"));
                    TrD.setTaxPer(0);
                    TrD.setTotal(Rs_order_detail.getInt("TOTAL"));
                    TRD_All.add(TrD);
                }
            }else{
                //Get Orderid for new Order
                Order_id= db.queryint("select max(ORDER_ID)+1 from TBL_ORDER");
                tr=new Order();
                tr.setOrder_id(Order_id);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowTrade.class.getName()).log(Level.SEVERE, null, ex);
        }
        req.setAttribute("Trade", tr);
        req.setAttribute("TradeDetail", TRD_All);
        req.setAttribute("Categories", Cat_All);
        return "Order.jsp";
    }
}
