/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Stack;

/**
 *
 * @author sai
 */
public class MemberTree {

    TreeNode Root, child;
    ArrayList<TreeNode> Childs = null;
    ArrayList<Member> RtMember = null;
    DBConnection db;
    String parent = "";
    String node = "{";
    String edge = "{";
    String sparent, snode, sedge;
    Stack<TreeNode> St;
    Member TempMem = null;

    public MemberTree(Integer Rid) {
        try {
            RtMember = new ArrayList<Member>();
            St = new Stack<TreeNode>();
            db = DBConnection.db;

            ResultSet RsRoot = db.querys("select TM.username,TM.ACC_FLAG,MD.* from TBL_MEMBER TM,View_Member MD where Tm.MEM_ID=" + Rid + " and Tm.MEM_ID=MD.MEM_ID");
            while (RsRoot.next()) {
                TempMem = new Member();
                TempMem.setUsername(RsRoot.getString("USERNAME"));
                TempMem.setParent_ID(0);
                TempMem.setMemid(RsRoot.getInt("MEM_ID"));
                TempMem.setFirstname(RsRoot.getString("FNAME"));
                TempMem.setLastname(RsRoot.getString("LNAME"));
                TempMem.setOptgender(RsRoot.getString("GENDER"));
                TempMem.setBirthdate(RsRoot.getString("DOB"));
                TempMem.setAddress(RsRoot.getString("R_ADDRESS"));
                TempMem.setCity(RsRoot.getString("CITY"));
                TempMem.setState(RsRoot.getString("STATE"));
                TempMem.setCountry(RsRoot.getString("COUNTRY"));
                TempMem.setPincode(RsRoot.getInt("PINCODE"));
                TempMem.setMobile(RsRoot.getString("MOBILENO"));
                TempMem.setEmail(RsRoot.getString("EMAIL"));
                TempMem.setImage(RsRoot.getString("IMAGE"));
                TempMem.setACC_FLAG(RsRoot.getInt("ACC_FLAG"));
                node += "'" + TempMem.getFirstname() + "':{color:'red', shape:'dot', alpha:1},";
            }
            Root = new TreeNode(TempMem);
            St.push(Root);
            while (!St.isEmpty()) {
                TreeNode Temp = St.pop();
                 RtMember.add(Temp.Getdata());
                Childs = new ArrayList<TreeNode>();
                ResultSet Rschild = db.querys("select TM.username,TM.ACC_FLAG,MD.* from TBL_MEMBER TM,View_Member MD,MEMBER_CHAIN MC where Tm.MEM_ID=MD.MEM_ID and MD.MEM_ID=MC.CHILD and MC.PARENT=" + Temp.Getdata().getMemid()+" order by MD.MEM_ID");
                if (Rschild.next()) {
                    parent += "'" + Temp.Getdata().getFirstname() + "',";
                    edge += "'" + Temp.Getdata().getFirstname() + "':{";
                    do {
                        TempMem = new Member();
                        TempMem.setUsername(Rschild.getString("USERNAME"));
                        TempMem.setParent_ID(Temp.Getdata().getMemid());
                        TempMem.setMemid(Rschild.getInt("MEM_ID"));
                        TempMem.setFirstname(Rschild.getString("FNAME"));
                        TempMem.setLastname(Rschild.getString("LNAME"));
                        TempMem.setOptgender(Rschild.getString("GENDER"));
                        TempMem.setBirthdate(Rschild.getString("DOB"));
                        TempMem.setAddress(Rschild.getString("R_ADDRESS"));
                        TempMem.setCity(Rschild.getString("CITY"));
                        TempMem.setState(Rschild.getString("STATE"));
                        TempMem.setCountry(Rschild.getString("COUNTRY"));
                        TempMem.setPincode(Rschild.getInt("PINCODE"));
                        TempMem.setMobile(Rschild.getString("MOBILENO"));
                        TempMem.setEmail(Rschild.getString("EMAIL"));
                        TempMem.setImage(Rschild.getString("IMAGE"));
                        TempMem.setACC_FLAG(Rschild.getInt("ACC_FLAG"));
                        child = new TreeNode(TempMem);
                        St.push(child);
                        Childs.add(child);
                        node += "'" + TempMem.getFirstname() + "':{color:'red', shape:'dot', alpha:1},";//All Nodes in Graph
                        edge += "'" + TempMem.getFirstname() + "':{length:.8},";
                    } while (Rschild.next());
                    Temp.Child = Childs;
                    edge = edge.substring(0, edge.length() - 1);
                    edge += "},";
                }
            }
            parent = parent.substring(0, parent.length() - 1);
            edge = edge.substring(0, edge.length() - 1);
            edge += "}";
            node = node.substring(0, node.length() - 1);
            node += "}";
        } catch (Exception ex) {
            ex.getMessage();
        }
    }

    public ArrayList<Member> GetList() {
        return RtMember;
    }

    public String getparent() {
        return parent;
    }

    public String getedge() {
        return edge;
    }

    public String getnode() {
        return node;
    }
}

class TreeNode {

    Member Data;
    ArrayList<TreeNode> Child;

    public TreeNode() {
        Data = null;
        Child = null;
    }

    public TreeNode(Member d) {
        Data = d;
        Child = null;
    }

    public Member Getdata() {
        return Data;
    }

    public ArrayList<TreeNode> Getchild() {
        return Child;
    }
}