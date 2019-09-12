/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Configuracion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    Connection con;
    public Conexion(){
        
        try {
            String user = "root";
            String pass = "fernandolb";
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/sisgesdb?user=" +
                user + "&password=" + pass;
            con = DriverManager.getConnection(url);
            
        } catch (Exception e) {
            System.err.println("Error " + e);
        }
    }
    
    public Connection getConnection(){
            return con;
    }
}

