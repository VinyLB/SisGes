/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Xavier
 */
public class TipoTecnico {
    private int idTipoTecnico;
    private String Nombre;
    private String Descripcion;

    public int getIdTipoTecnico() {
        return idTipoTecnico;
    }

    public void setIdTipoTecnico(int idTipoTecnico) {
        this.idTipoTecnico = idTipoTecnico;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public TipoTecnico(int idTipoTecnico, String Nombre, String Descripcion) {
        this.idTipoTecnico = idTipoTecnico;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public TipoTecnico() {
    }
    
    
    
}
