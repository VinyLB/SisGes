/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Clases.Cliente;
import Configuracion.Conexion;
import Interface.CRUDcliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mflb0
 */
public class ClienteDAO implements CRUDcliente{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cliente cliente = new Cliente();

    @Override
    public List listar() {
        ArrayList<Cliente>list = new ArrayList<>();
        String sql="select * from clientes";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setCedula(rs.getString("cedulaCliente"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setUsuario(rs.getString("usuario"));
                cliente.setClave(rs.getString("clave"));
                cliente.setTelefono(rs.getString("telefono"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setCorreo(rs.getString("correo"));
                list.add(cliente);                
            }
            
        } catch (Exception e) {
            System.out.println("ClienteDAO.listar() " + e);
        }
        return list;
    }

    @Override
    public Cliente list(String cedula) {
        String sql="select * from clientes where cedulaCliente=" + cedula;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cliente.setCedula(rs.getString("cedulaCliente"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setUsuario(rs.getString("usuario"));
                cliente.setClave(rs.getString("clave"));
                cliente.setTelefono(rs.getString("telefono"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setCorreo(rs.getString("correo"));                
            }
            
        } catch (Exception e) {
        }
        return cliente;
    }

    @Override
    public boolean add(Cliente cliente) {
        String sql = "insert into clientes(cedulaCliente, nombre, apellido, usuario, clave, telefono, direccion, correo) values('"
                + cliente.getCedula() + "','" + cliente.getNombre() + "','" + cliente.getApellido() + "','" + cliente.getUsuario()+ "','" + cliente.getClave()+ "'"
                + ",'" + cliente.getTelefono()+ "','" + cliente.getDireccion()+ "','" + cliente.getCorreo()+ "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ClienteDAO.add()" + e);
        }
        return false;
    }

    @Override
    public boolean edit(Cliente cliente) {
        String sql = "update clientes set nombre='" + cliente.getNombre()+ "',apellido='" + cliente.getApellido()+ "',usuario='" + cliente.getUsuario()+ "'"
                + ",clave='" + cliente.getClave()+ "',telefono='" + cliente.getTelefono()+ "',direccion='" + cliente.getDireccion()+ "'"
                + ",correo='" + cliente.getCorreo()+ "' where cedulaCliente=" + cliente.getCedula();
        try {
            con = cn.getConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ClienteDAO.edit() " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(String cedula) {
        String sql = "delete from clientes where cedulaCliente="+ cedula;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
