/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.dbutility;

import com.mlm.bean.Member;
import java.util.ArrayList;

/**
 *
 * @author sai
 */
public class Demo {
    public static void main(String [ ] args){
        ArrayList<Member> RtMember;
        MemberTree mt=new MemberTree(1);
        //mt.GetList(1);
        System.out.println(mt.getnode());
        System.out.println(mt.getparent());
        System.out.println(mt.getedge());
    }
}
