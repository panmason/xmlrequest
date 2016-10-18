package com.infitecs.xmlrequest.bean;

/**
 * @author peter pan on 10/18/2016.
 */
public class User {

    private String username;
    private String address;
    private String age;
    private String sex;

    public User(String username, String address, String age, String sex) {
        this.username = username;
        this.address = address;
        this.age = age;
        this.sex = sex;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
