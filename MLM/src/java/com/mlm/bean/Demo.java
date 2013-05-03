/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import java.util.ArrayList;


/**
 *
 * @author sai
 */
public class Demo {
    public static void main(String [ ] args){
        Order or=new Order();
        or.getSinglelOrder(0);
        System.out.println(or.getTotal());
        ArrayList<OrderDetail> od=or.getOrder();
        System.out.println(od.get(0).getQty());
    }
}
