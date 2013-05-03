/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author sai
 */
public class Categories {
    private Integer catid;
    private String catname;
    private DBConnection db;
    private ArrayList<Categories> Cat_All; 
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
    
    public ArrayList<Categories> getAll(){
        try {
            Cat_All=new ArrayList<Categories>();
            ResultSet Rs_Cat = db.querys("select * from TBL_CTG order by CTG_ID");
                Cat_All = new ArrayList<Categories>();
                while (Rs_Cat.next()) {
                    Categories ct = new Categories();
                    ct.setCatid(Rs_Cat.getInt("CTG_ID"));
                    ct.setCatname(Rs_Cat.getString("CTG_NAME"));
                    Cat_All.add(ct);
                }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return Cat_All;
    }
    
    public void getNewID(){
        catid=db.queryint("select max(CTG_ID)+1 from TBL_CTG");
    }
}