/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.dbutility.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public class ShowMemberChain implements Action{
        DBConnection db;
    public ShowMemberChain() {
        db=new DBConnection();
    }

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {
        ResultSet rs=db.querys("select PARENT from demo union select child from demo");
        ResultSet rs1=db.querys("select distinct(PARENT)  from demo where PARENT not in (select CHILD from demo where CHILD not in (select PARENT from demo))");
        String parent="";
        String node="{";
        String edge="{";
        try {
            while(rs.next()){
                node+="'"+rs.getInt("PARENT")+"':{color:'red', shape:'dot', alpha:1},";
            }
            node=node.substring(0,node.length()-1);
            node+="}";
            while(rs1.next()){
                  
                  parent+="'"+rs1.getInt("PARENT")+"',";
                  edge+="'"+rs1.getInt("PARENT")+"':{";
                  ResultSet rs2=db.querys("select CHILD from demo where PARENT="+rs1.getInt("PARENT")); 
                  while(rs2.next()){
                      edge+="'"+rs2.getInt("CHILD") +"':{length:.8},";
                  }     
                  edge=edge.substring(0,edge.length()-1);
                  edge+="},";
            }
            parent=parent.substring(0,parent.length()-1);
            edge=edge.substring(0,edge.length()-1);
            edge+="}";
            req.setAttribute("parent",parent);
            req.setAttribute("node",node);
            req.setAttribute("edge",edge);
        } catch (SQLException ex) {
            Logger.getLogger(ShowMemberChain.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Member_chain.jsp";
    }

}
