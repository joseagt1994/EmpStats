/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Grupo4.EmployeeStats.SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jose Antonio
 */
public class Conexion {
    
    private Connection con;
    public Conexion(){
        
    }
    
    //get Connection
    public Connection getConexion(){
        return con;
    }
    
    //Conectar a base de datos
    public void conectar(){
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String conURL = "jdbc:sqlserver://184.168.194.78:1433;databaseName=cideautos;";
            String usuario = "grupo4";
            String pass = "ini_inter2017";
            try {
                con = DriverManager.getConnection(conURL,usuario,pass);
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    /********************** MANEJO DE EMPLEADOS ***********************************/
    //********************* INSERTAR EMPLEADO *************************************/
    public void insertarEmpleado(){
        
    }
    
    /********************** BUSCAR EMPLEADO ***************************************/
    public Empleado buscarEmpleado(){
        return null;
    }
    
    /********************** MODIFICAR EMPLEADO ************************************/
    public void modificarEmpleado(Empleado emp){
        
    }
    
}
