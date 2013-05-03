/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author sai
 */
public class User {
    private Integer memid;
    private String username;
    private String password;
    private DBConnection db;
    private String status;
    private String Type;

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    public User() {
        db= DBConnection.db;
    }
    
    public Integer getMemid() {
        return memid;
    }

    public void setMemid(Integer memid) {
        this.memid = memid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
   
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String pasword) {
        this.password = pasword;
    }
    //ResultSet Rs=db.querys("select * from TBL_MEMBER where USERNAME='"+username+"' and PASSWORD='"+password+"'");
    public boolean userlogin(){
        try {
            ResultSet Rs=db.querys("select MEM_ID,USERNAME,PASSWORD,TYPE from TBL_MEMBER where USERNAME='"+username+"'");
            if(Rs.next()){
                Integer tmemid=Rs.getInt("MEM_ID");
                String tusername=Rs.getString("USERNAME");
                String tpwd=Rs.getString("PASSWORD");
                Type=Rs.getString("TYPE");
                memid=Rs.getInt("MEM_ID");
                if(tusername.equalsIgnoreCase(username)){
                    if(tpwd.equals(password)){
                        return true;
                    }                   
                }
            }
        } catch (SQLException ex) {
           // Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
            return false; 
    }    
}
