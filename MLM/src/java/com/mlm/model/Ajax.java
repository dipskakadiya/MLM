/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.bean.City;
import com.mlm.bean.Product;
import com.mlm.bean.State;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author sai
 */
public class Ajax {

    DBConnection db;

    public Ajax() {
        db = new DBConnection();
    }

    public ArrayList<Product> getProduct_By_Cat(Integer Cat_id) {
        ResultSet rs = db.querys("select * from TBL_ITEM where CTG_ID=" + Cat_id);
        ArrayList<Product> Pr_All = new ArrayList<Product>();
        try {
            while (rs.next()) {
                Product pr = new Product();
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
        } catch (Exception ex) {
            ex.getMessage();
        }
        return Pr_All;
    }

    public ArrayList<State> getState(String Cou_id) {
        ResultSet rs = db.querys("select * from STATE where CO_ID=" + Cou_id + " order by ST_ID");
        ArrayList<State> St_All = new ArrayList<State>();
        try {
            while (rs.next()) {
                State St = new State();
                St.setCou_id(rs.getInt("CO_ID"));
                St.setStateid(rs.getInt("ST_ID"));
                St.setState(rs.getString("ST_NAME"));
                St_All.add(St);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return St_All;
    }

    public ArrayList<City> getCity(String St_id) {
        ResultSet rs = db.querys("select * from CITY where ST_ID=" + St_id + " order by CI_ID");
        ArrayList<City> Ct_All = new ArrayList<City>();
        try {
            while (rs.next()) {
                City Ct = new City();
                Ct.setSt_id(rs.getInt("ST_ID"));
                Ct.setCityid(rs.getInt("CI_ID"));
                Ct.setCity(rs.getString("CI_NAME"));
                Ct_All.add(Ct);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return Ct_All;
    }
}