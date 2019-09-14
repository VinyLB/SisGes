/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Clases.Cliente;
import Clases.Equipo;
import Configuracion.Conexion;
import Interface.CRUDequipo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 *
 * @author mflb0
 */
public class EquipoDAO implements CRUDequipo {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Equipo equipo = new Equipo();    
    
    @Override
    public List Listar() {
        ArrayList<Equipo>list = new ArrayList<>();
        String sql="select * from Equipos";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Equipo equipo = new Equipo();
                Cliente cliente = new Cliente();
                ClienteDAO dao = new ClienteDAO();
                equipo.setIdEquipo(rs.getInt("idEquipo"));
                equipo.setTipoEquipo(rs.getString("tipoEquipo"));
                equipo.setMarca(rs.getString("marca"));
                equipo.setModelo(rs.getString("modelo"));
                equipo.setSerie(rs.getString("serie"));
                
                
                cliente = (Cliente) dao.list("cedulaCliente");
                
                /*cliente.setCedula(rs.getString("cedulaCliente"));*/
                
                
                
                
                equipo.setCliente(cliente);                
                list.add(equipo);                
            }
            
        } catch (Exception e) {
            System.out.println("EquipoDAO.listar() " + e);
        }
        return list;
    }

    @Override
    public Equipo list(int idEquipo) {
        String sql="select * from equipos where idEquipo=" + idEquipo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            Cliente cliente = new Cliente();
            while(rs.next()){                  
                equipo.setIdEquipo(rs.getInt("idEquipo"));
                equipo.setTipoEquipo(rs.getString("tipoEquipo"));
                equipo.setMarca(rs.getString("marca"));
                equipo.setModelo(rs.getString("modelo"));
                equipo.setSerie(rs.getString("serie"));
                cliente.setCedula(rs.getString("cedulaCliente"));
                equipo.setCliente(cliente);
            }
            
        } catch (Exception e) {
            System.out.println("ModeloDAO.EquipoDAO.list()" + e.getMessage());
        }
        return equipo;
    }

    @Override
    public boolean add(Equipo equipo) {
        String sql = "insert into equipos(tipoEquipo, marca, modelo, serie, cedulaCliente) values('"
                + equipo.getTipoEquipo()+ "','" + equipo.getMarca()+ "','" + equipo.getModelo()+ "','" + equipo.getSerie()+ "','" + equipo.getCliente().getCedula() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("EquipoDAO.add()" + e);
        }
        return false;
    }

    @Override
    public boolean edit(Equipo equipo) {
        String sql = "update equipos set tipoEquipo='" + equipo.getTipoEquipo()+ "', marca='" + equipo.getMarca()+ "', modelo='" + equipo.getModelo()+ "'"
                + ", serie='" + equipo.getSerie()+ "', cedulaCliente='" + equipo.getCliente().getCedula() + "'"
                + " where idEquipo='" + equipo.getIdEquipo() + "'";
        try {
            con = cn.getConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("EquipoDAO.edit() " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int idEquipo) {
        String sql = "delete from equipos where idEquipo="+ idEquipo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
