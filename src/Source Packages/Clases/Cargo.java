/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;


/**
 *
 * @author DELL 14
 */
public class Cargo {
    
 private Integer idcargo;
 private String nombre;
 private String descripcion;

    public Cargo() {        
    }

    public Integer getIdcargo() {
        return idcargo;
    }

    public void setIdcargo(Integer idcargo) {
        this.idcargo = idcargo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Cargo(Integer idcargo, String nombre, String descripcion) {
        this.idcargo = idcargo;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    
}
