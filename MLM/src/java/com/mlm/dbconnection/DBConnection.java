/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.dbconnection;

import java.sql.*;

/**
 *
 * @author sai
 */
public class DBConnection {
        String error=null;
	Connection con = null;
	String url = "";
	String username = "";
	String password = "";
	Statement st = null;
	ResultSet rs;
	public DBConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
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
	public void queryiu(String sql){
		try {
			st = con.createStatement();
			st.execute(sql);
			error=null;
		}catch (Exception e) {
			// TODO Auto-generated catch block
			error=e.toString();
			System.out.println(e.getMessage());
		}
	}
	public ResultSet querys(String sql){
		try {
			st = con.createStatement();
			rs=st.executeQuery(sql);
			error=null;
		}catch (Exception e) {
			// TODO Auto-generated catch block
			error=e.toString();
			System.out.println(e.getMessage());
		}
		return rs;
	}
        
}
