/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.dbutility;

import java.sql.*;

public final class DBConnection {
    
    public Connection conn;
    public static DBConnection db;
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

    public static synchronized DBConnection getDbCon() {
        if (db == null) {
            db = new DBConnection();
        }
        return db;
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

/*public ResultSet query(String query) throws SQLException{
     statement = db.conn.createStatement();
     ResultSet res = statement.executeQuery(query);
     return res;
     }
    
     public int insert(String insertQuery) throws SQLException {
     statement = db.conn.createStatement();
     int result = statement.executeUpdate(insertQuery);
     return result;
 
     }*/
/*
 enum Connection {
 private static String error ;
 private static Connection con;
 private static String  url = "jdbc:oracle:thin:@localhost:1521:XE";
 private static String username = "mlm";
 private static String password = "mlm";
 private static Statement st = null;
 private static ResultSet rs;
 private static Integer temp=null;
 public DBConnection(){
 try {
 Class.forName("oracle.jdbc.OracleDriver").newInstance();
 con = DriverManager.getConnection(url,username,password);
 error=null;
 } catch (Exception e) {
 // TODO Auto-generated catch block
 error=e.toString();
 }		
 }
 public String geterror(){
 return error;
 }
 public void queryi(String sql){
 try {
 st = con.createStatement();
 st.execute(sql);                      
 //error=null;
 }catch (Exception e) {
 // TODO Auto-generated catch block
 //			error=e.toString();
 System.out.println("erreor"+e.getLocalizedMessage());
 }
 }
 public void queryud(String sql){
 try {
 st = con.createStatement();
 st.executeUpdate(sql);                      
 //error=null;
 }catch (Exception e) {
 // TODO Auto-generated catch block
 //			error=e.toString();
 System.out.println("erreor"+e.getLocalizedMessage());
 }
 }
 public ResultSet querys(String sql){
 try {
 st = con.createStatement();
 rs=st.executeQuery(sql);
 //			error=null;
 }catch (Exception e) {
 // TODO Auto-generated catch block
 //			error=e.toString();
 System.out.println(e.getMessage());
 }
 return rs;
 }
        
 public Integer queryint(String sql){
 try {
 st = con.createStatement();
 rs=st.executeQuery(sql);
 rs.next();
 temp=rs.getInt(1);
 //			error=null;
 }catch (Exception e) {
 // TODO Auto-generated catch block
 //			error=e.toString();
 System.out.println(e.getMessage());
 }
 return temp;
 }
        
 }*/
