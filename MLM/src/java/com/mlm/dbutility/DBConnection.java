/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.dbutility;

import java.sql.*;

/**
 *
 * @author sai
 */
public class DBConnection {
        String error=null;
	Connection con = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String username = "mlm";
	String password = "mlm";
	Statement st = null;
	ResultSet rs;
        Integer temp=null;
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
	public void queryiu(String sql){
		try {
                        st = con.createStatement();
			st.execute(sql);                      
			//error=null;
		}catch (Exception e) {
			// TODO Auto-generated catch block
			error=e.toString();
			System.out.println("erreor"+e.getLocalizedMessage());
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
        
        public Integer queryint(String sql){
                try {
			st = con.createStatement();
			rs=st.executeQuery(sql);
                        rs.next();
                        temp=rs.getInt(1);
			error=null;
		}catch (Exception e) {
			// TODO Auto-generated catch block
			error=e.toString();
			System.out.println(e.getMessage());
		}
		return temp;
	}
        
}
