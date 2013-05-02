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
public class Country {
    private Integer cou_id;
    private String country; 
    private ArrayList<Country> Country_All = null;   
    DBConnection db;

    public Country() {
        db= DBConnection.db;
    }
    
    public Integer getCou_id() {
        return cou_id;
    }

    public void setCou_id(Integer cou_id) {
        this.cou_id = cou_id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    public ArrayList<Country> getAll(){
        try {
            Country_All=new ArrayList<Country>();
            ResultSet Rs_Country = db.querys("select * from COUNTRY order by CO_ID");
            while (Rs_Country.next()) {
                Country cou = new Country();
                cou.setCou_id(Rs_Country.getInt("CO_ID"));
                cou.setCountry(Rs_Country.getString("CO_NAME"));
                Country_All.add(cou);
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return Country_All;
    }
}
