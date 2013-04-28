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
        MemberTree mt=new MemberTree();
        RtMember=mt.GetList(1);
        for (int i = 0; i < RtMember.size(); i++) {
            System.out.println("NOde:"+RtMember.get(i).getFirstname());
        }
    }
}
