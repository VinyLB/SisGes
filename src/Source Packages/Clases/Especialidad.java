/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author mflb0
 */
public class Especialidad {    
    private int idEspecialidad;
    private String nombre;
    private String Descripcion;

    public int getIdEspecialidad() {
        return idEspecialidad;
    }

    public void setIdEspecialidad(int idEspecialidad) {
        this.idEspecialidad = idEspecialidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public Especialidad(int idEspecialidad, String nombre, String Descripcion) {
        this.idEspecialidad = idEspecialidad;
        this.nombre = nombre;
        this.Descripcion = Descripcion;
    }

    public Especialidad() {
    }
    
    
}
