/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.naufaltrix.joindb;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author latitude
 */
public class koneksi {
    Connection con;
    public koneksi(){
        String id, pass, driver, url;
        id = "root";
        pass = "";
        driver = "com.mysql.jdbc.Driver";
        url = "jdbc:mysql://localhost:3306/universitas";
        try{
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url,id,pass);
            if (con==null){
                JOptionPane.showMessageDialog (null,"GAGAL");
            }else{
                JOptionPane.showMessageDialog(null,"Koneksi Berhasil");
            }
        }catch (Exception e){
            System.out.println(""+e.getMessage());
        }
    }
public static void main(String[]args){
    koneksi k=new koneksi();
    }           
}
