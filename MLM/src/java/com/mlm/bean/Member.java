/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbconnection.DBConnection;

/**
 *
 * @author sai
 */
public class Member {
     public static void main(String[] args) {
        DBConnection db=new DBConnection();
        db.queryiu("insert into usermaster values(2,'HR')");
        //db.querys("select * from usermaster");
    }
}
