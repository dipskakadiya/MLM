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
public class State {
     private Integer stateid;
     private String state;
      private Integer cou_id;
      DBConnection db;

    public State() {
        db=DBConnection.db;
    }
      

    public Integer getStateid() {
        return stateid;
    }

    public void setStateid(Integer stateid) {
        this.stateid = stateid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getCou_id() {
        return cou_id;
    }

    public void setCou_id(Integer cou_id) {
        this.cou_id = cou_id;
    }
    
    public ArrayList<State> getAll(int Cou_id){
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
}
