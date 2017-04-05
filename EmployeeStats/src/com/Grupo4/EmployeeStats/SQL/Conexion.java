/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Grupo4.EmployeeStats.SQL;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
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
    public boolean conectar(){
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String conURL = "jdbc:sqlserver://localhost:1433;databaseName=EmpStats;";
            String usuario = "Conexion";
            String pass = "1234";
            try {
                con = DriverManager.getConnection(conURL,usuario,pass);
                return true;
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    //Cerrar sesion
    public void desconectar(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /********************** MANEJO DE EMPLEADOS ***********************************/
    //********************* INSERTAR EMPLEADO *************************************/
    public boolean insertarEmpleado(Empleado e){
        
        boolean funciono = false;
        if(conectar()){
            String consulta = "INSERT INTO Trabajador VALUES ("
                +"'"+ e.getDPI() +"'"
                +"'"+ e.getPasaporte() +"'"
                +"'"+ e.getPrimerApe() +"'"
                +"'"+ e.getSegundoApe() +"'"
                +"'"+ e.getNombre() +"'"
                +"'"+ e.getLugar() +"'"
                +"'"+ e.getFecha_nac() +"'"
                +"'"+ e.getCiudad() +"'"
                +"'"+ e.getColegiado() +"'"
                +"'"+ e.getDireccion() +"'"
                +"'"+ e.getTelRes() +"'"
                +"'"+ e.getCel() +"'"
                +"'"+ e.getTelEmer() +"'"
                +"'"+ e.getFoto() +"'"
                +"'"+ e.getFunciones() +"'"
                +"'"+ e.getEspecializaciones() +"'"
                +"'"+ e.getEmail() +"'"
                +"'"+ e.getFecha_ingreso() +"'"
                +"'"+ e.getTelOfi() +"'"
                +"'"+ e.getpF() +"'"
                +"'"+ e.getpN() +"'"
                +"'"+ e.geteCivil() +"'"
                +"'"+ e.getSexo() +"'"
                +"'"+ e.getArea() +"'"
                +"'"+ e.getTipoArea() +"'"
                +");";
        
            Statement stmt;
            try {
                stmt = con.createStatement();
                stmt.execute(consulta);
                funciono = true;
                
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            } finally{
                desconectar();
            }
        }
        return funciono;
        
    }
    
    /********************** BUSCAR EMPLEADO ***************************************/
    public Empleado buscarEmpleado(String DPI){
        Empleado encontrado = new Empleado();
        String consulta = "SELECT * FROM Trabajador WHERE DPI = '"+DPI+"';";
        return encontrado;
    }
    
    /********************** MODIFICAR EMPLEADO ************************************/
    public void modificarEmpleado(Empleado emp){
        
    }
    
}
