/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;

/**
 *
 * @author sai
 */
public class Categories {
    private Integer catid;
    private String catname;
    private DBConnection db;

    public Categories() {
         db = new DBConnection();
    }
    
    public Integer getCatid() {
        return catid;
    }

    public void setCatid(Integer catid) {
        this.catid = catid;
    }

    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname;
    }
  
    //Insert
    public void Insert(){
        db.queryi("insert into TBL_CTG values("+catid+",'"+catname+"')");
    }
    
    //Update 
    public void Update(){
        db.queryud("update TBL_CTG set CTG_NAME='"+catname+"' where CTG_ID="+catid);
    }
    
    //Delete
    public void delete(){
        db.queryud("delete from TBL_CTG where CTG_ID="+catid);
    }
}