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
public class City {
     private Integer cityid;
     private String city;
      private Integer st_id;
      DBConnection db;

    public City() {
        db=DBConnection.db;
    }
      
    public Integer getCityid() {
        return cityid;
    }

    public void setCityid(Integer cityid) {
        this.cityid = cityid;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getSt_id() {
        return st_id;
    }

    public void setSt_id(Integer st_id) {
        this.st_id = st_id;
    }
    
    public ArrayList<City> getAll(int St_id){
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
