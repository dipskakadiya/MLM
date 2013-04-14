package com.mlm.dbutility;

public class ObjectCreator {
    public static Object createObject(String class_name) {
        Object obj = null;
        try {
            Class name = Class.forName( class_name );
            obj = name.newInstance();
        }
        catch(Exception e) { 
            //out.println("Error");
        }
        return obj;        
    }
}
