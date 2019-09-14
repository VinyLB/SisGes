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
public class Equipo {
    private int idEquipo;
    private String tipoEquipo;
    private String marca;
    private String modelo;
    private String serie;
    private Cliente cliente;

    public int getIdEquipo() {
        return idEquipo;
    }

    public void setIdEquipo(int idEquipo) {
        this.idEquipo = idEquipo;
    }

    public String getTipoEquipo() {
        return tipoEquipo;
    }

    public void setTipoEquipo(String tipoEquipo) {
        this.tipoEquipo = tipoEquipo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Equipo(int idEquipo, String tipoEquipo, String marca, String modelo, String serie, Cliente cliente) {
        this.idEquipo = idEquipo;
        this.tipoEquipo = tipoEquipo;
        this.marca = marca;
        this.modelo = modelo;
        this.serie = serie;
        this.cliente = cliente;
    }

    public Equipo() {
    }
    
    
}
