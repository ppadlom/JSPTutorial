/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.arisa.models;

import java.util.List;

/**
 *
 * @author user
 */
public class Test {

    public static void main(String[] args) {
        List<Friend> friends = Friend.find("");
        // for each loop here
        // and print it ka
        for (Friend e : friends) {
            System.out.println(e);
        }
    }
}
