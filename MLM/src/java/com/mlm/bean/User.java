/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
    public User() {
        db=new DBConnection();
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
    public void userlogin(){
        try {
            ResultSet Rs=db.querys("select MEM_ID,USERNAME,PASSWORD from TBL_MEMBER where USERNAME='"+username+"'");
            if(Rs.next()){
                Integer tmemid=Rs.getInt("MEM_ID");
                String tusername=Rs.getString("USERNAME");
                String tpwd=Rs.getString("PASSWORD");
                System.out.println(tmemid+" "+tusername+" "+tpwd);
                                System.out.println(tmemid+" "+tusername+" "+username);

                if(tusername.compareTo(username)==0){
                    System.out.print("matched");
                }
            }
        } catch (SQLException ex) {
           // Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
           
    }    
}
