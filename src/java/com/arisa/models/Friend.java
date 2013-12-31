package com.arisa.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author user
 */
public class Friend {

    private int id;
    private String firstName;
    private String lastName;
    private String profilePhoto;
    private String dob;

    public Friend(int id, String firstName, String lastName, String profilePhoto, String dob) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.profilePhoto = profilePhoto;
        this.dob = dob;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getProfilePhoto() {
        return profilePhoto;
    }

    public void setProfilePhoto(String profilePhoto) {
        this.profilePhoto = profilePhoto;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public Friend findById(int id) {
        return null;
    }

    // Returns list of friends, every friends
    // 1. Create variable for hold the data (list of friends)
    // 2. connect database
    // 3. create SQL statement and execute it
    // 4. change data from result set to Friend object
    // 5. add that object to the variable declared above
    // 6. return list of friends
    //
    // Extra: handle exception : )
    public static List<Friend> find(String searchKey) {
        List<Friend> friends = new ArrayList<>();
        Friend tmp;
        Connection con;
        try {
            con = DriverManager.getConnection(DBHelper.URL, DBHelper.USER, DBHelper.PASS);
            String sqlCmd = "SELECT * FROM Friends WHERE firstname LIKE ? or lastname LIKE ? or dob LIKE ?";
            //String sqlCmd = "SELECT * FROM friends";
            PreparedStatement stm = con.prepareStatement(sqlCmd);

            stm.setString(1, '%' + searchKey + '%');
            stm.setString(2, '%' + searchKey + '%');
            stm.setString(3, '%' + searchKey + '%');
            System.out.println(stm);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                String profilePhoto = rs.getString("profilephotos");
                String dob = rs.getString("dob");
                tmp = new Friend(id, firstName, lastName, profilePhoto, dob);

                friends.add(tmp);
            }

            con.close();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return friends;

    }

    @Override
    public String toString() {
        // What is your new year resolution?
        return "\nID : " + id + " \nName : " + firstName + " " + lastName + "\nBirth date : " + dob;

    }

}
