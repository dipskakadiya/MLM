/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.*;

enum DBConnection {

    db;
    public Connection conn;
    private String error;
    private Statement st = null;
    private ResultSet rs;
    private Integer temp = null;
    
    private DBConnection() {
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String username = "mlm";
        String password = "mlm";
        String driver = "oracle.jdbc.OracleDriver";
        try {
            Class.forName(driver).newInstance();
            this.conn = (Connection) DriverManager.getConnection(url, username, password);
        } catch (Exception sqle) {
            sqle.printStackTrace();
        }
    }
    
    public String geterror() {
        return error;
    }
    
    public void queryi(String sql) {
        try {
            st = db.conn.createStatement();
            st.execute(sql);
            //error=null;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            error = e.toString();
            System.out.println("erreor" + e.getLocalizedMessage());
        }
    }
    
    public void queryud(String sql) {
        try {
            st = db.conn.createStatement();
            st.executeUpdate(sql);            
            error = null;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            error = e.toString();
            System.out.println("erreor" + e.getLocalizedMessage());
        }
    }
    
    public ResultSet querys(String sql) {
        try {
            st = db.conn.createStatement();
            rs = st.executeQuery(sql);
            error = null;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            error = e.toString();
            System.out.println(e.getMessage());
        }
        return rs;
    }
    
    public Integer queryint(String sql) {
        try {
            st = db.conn.createStatement();
            rs = st.executeQuery(sql);
            rs.next();
            temp = rs.getInt(1);
            error = null;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            error = e.toString();
            System.out.println(e.getMessage());
        }
        return temp;
    }
}
