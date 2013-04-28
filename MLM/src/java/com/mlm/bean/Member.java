/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.bean;

import com.mlm.dbutility.DBConnection;



/**
 *
 * @author sai
 */
public class Member {
    private Integer memid;
    private Integer Parent_ID;
    private String username;
    private String email;
    private String mobile;
    private String Firstname;
    private String lastname;
    private String optgender;
    private String birthdate;
    private String address;
    private String country;
    private String state;
    private String city ;
    private Integer pincode;
    private String image;
    private DBConnection db;

    public Integer getParent_ID() {
        return Parent_ID;
    }

    public void setParent_ID(Integer Parent_ID) {
        this.Parent_ID = Parent_ID;
    }
    public Member() {
         db = new DBConnection();
    }
    public Integer getMemid() {
        return memid;
    }

    public void setMemid(Integer memid) {
        this.memid = memid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String isOptgender() {
        return optgender;
    }

    public void setOptgender(String optgender) {
        this.optgender = optgender;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getPincode() {
        return pincode;
    }

    public void setPincode(Integer pincode) {
        this.pincode = pincode;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    //Insert
    public void Insert(){
        db.queryi("insert into TBL_MEMBER values("+memid+",'"+username+"','"+memid+"@"+username+"@"+memid+"','Client',0)");
        db.queryi("insert into MEMBER_DETAIL values("+memid+",'"+Firstname+"','"+lastname+"','"+optgender+"','1-mar-1992','"+address+"',"+city+","+state+","+country+","+pincode+","+mobile+",'"+email+"','"+image+"')");
        int step=db.queryint("select max(STEP)+1 from MEMBER_CHAIN where CHILD="+Parent_ID);
        db.queryi("insert into MEMBER_CHAIN values("+Parent_ID+","+memid+","+step+")");
    }
    
    //Update 
    public void Update(){
        db.queryud("");
    }
    //Delete
    public void delete(){
        db.queryud("");
    }
}
