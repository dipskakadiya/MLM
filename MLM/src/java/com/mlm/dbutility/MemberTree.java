/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.dbutility;

import com.mlm.bean.Member;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Stack;
/**
 *
 * @author sai
 */

public class MemberTree {
    TreeNode Root,child;
    ArrayList<TreeNode> Childs=null;
    ArrayList<Member> RtMember=null;
    DBConnection db;
    Stack<TreeNode> St;
    Member TempMem=null;
    public MemberTree() {
        try {
            St=new Stack<TreeNode>();
            db = new DBConnection();
            ResultSet RsRoot=db.querys("select TM.username,MD.* from TBL_MEMBER TM,View_Member MD where TYPE='Admin' and Tm.MEM_ID=MD.MEM_ID");
            while(RsRoot.next()){
                TempMem=new Member();
                TempMem.setUsername(RsRoot.getString("USERNAME"));
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
            }
            Root=new TreeNode(TempMem);
            St.push(Root);
            while(!St.isEmpty()){
               TreeNode  Temp=St.pop(); 
               Childs=new ArrayList<TreeNode>();
               ResultSet Rschild=db.querys("select TM.username,MD.* from TBL_MEMBER TM,View_Member MD,MEMBER_CHAIN MC where Tm.MEM_ID=MD.MEM_ID and MD.MEM_ID=MC.CHILD and MC.PARENT="+Temp.Getdata().getMemid());
               while(Rschild.next()){
                    TempMem=new Member();
                    
                    TempMem.setUsername(Rschild.getString("USERNAME"));
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
                    child=new TreeNode(TempMem);
                    St.push(child);
                    Childs.add(child);
                }
               Temp.Child=Childs;
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
    }
    
    public void inorder(TreeNode Root){
        if(Root==null){ 
            return ;
        }
        RtMember.add(Root.Getdata());
        for(int i=0;i<Root.Getchild().size();i++){
            inorder(Root.Getchild().get(i));
        }   
    }
    
    public TreeNode Search(TreeNode Root,int Data){
        TreeNode Temp=null;
        if(Root.Getdata().getMemid()==Data){ 
            return Root;
        }
        for(int i=0;i<Root.Getchild().size();i++){
            Temp=Search(Root.Getchild().get(i),Data);
            if(Temp!=null){
                break;
            }
        }
        return Temp;
    }
    
    public ArrayList<Member> GetList(int AdminID){
        RtMember=new ArrayList<Member>();
        TreeNode temp=Search(Root, AdminID);
        inorder(temp);
        return RtMember;
    }
}
class TreeNode{
    Member Data;
    ArrayList<TreeNode> Child;
    public TreeNode() {
        Data=null;
        Child=null;
    }
    
    public TreeNode(Member d) {
        Data=d;
        Child=null;
    }
    
    public Member Getdata(){
        return Data;
    }
    
    public ArrayList<TreeNode> Getchild(){
        return Child;
    }
}