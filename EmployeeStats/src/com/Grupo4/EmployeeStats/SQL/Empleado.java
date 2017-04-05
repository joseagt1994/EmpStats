/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Grupo4.EmployeeStats.SQL;

import java.sql.Date;


/**
 *
 * @author Jose Antonio
 */
public class Empleado {
    
    private int id,pF,pN,eCivil,sexo,area,tipoArea;
    private String DPI,pasaporte,primerApe,segundoApe,nombre,lugar,ciudad,colegiado,direccion,telRes,cel,telEmer,foto,funciones,especializaciones
            ,email,telOfi;
    private Date fecha_nac,fecha_ingreso;
    
    public Empleado(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getpF() {
        return pF;
    }

    public void setpF(int pF) {
        this.pF = pF;
    }

    public int getpN() {
        return pN;
    }

    public void setpN(int pN) {
        this.pN = pN;
    }

    public int geteCivil() {
        return eCivil;
    }

    public void seteCivil(int eCivil) {
        this.eCivil = eCivil;
    }

    public int getSexo() {
        return sexo;
    }

    public void setSexo(int sexo) {
        this.sexo = sexo;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getTipoArea() {
        return tipoArea;
    }

    public void setTipoArea(int tipoArea) {
        this.tipoArea = tipoArea;
    }

    public String getDPI() {
        return DPI;
    }

    public void setDPI(String DPI) {
        this.DPI = DPI;
    }

    public String getPasaporte() {
        return pasaporte;
    }

    public void setPasaporte(String pasaporte) {
        this.pasaporte = pasaporte;
    }

    public String getPrimerApe() {
        return primerApe;
    }

    public void setPrimerApe(String primerApe) {
        this.primerApe = primerApe;
    }

    public String getSegundoApe() {
        return segundoApe;
    }

    public void setSegundoApe(String segundoApe) {
        this.segundoApe = segundoApe;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getColegiado() {
        return colegiado;
    }

    public void setColegiado(String colegiado) {
        this.colegiado = colegiado;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelRes() {
        return telRes;
    }

    public void setTelRes(String telRes) {
        this.telRes = telRes;
    }

    public String getCel() {
        return cel;
    }

    public void setCel(String cel) {
        this.cel = cel;
    }

    public String getTelEmer() {
        return telEmer;
    }

    public void setTelEmer(String telEmer) {
        this.telEmer = telEmer;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getFunciones() {
        return funciones;
    }

    public void setFunciones(String funciones) {
        this.funciones = funciones;
    }

    public String getEspecializaciones() {
        return especializaciones;
    }

    public void setEspecializaciones(String especializaciones) {
        this.especializaciones = especializaciones;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelOfi() {
        return telOfi;
    }

    public void setTelOfi(String telOfi) {
        this.telOfi = telOfi;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public Date getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(Date fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }
    
    
    
}
