/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Clases.TipoTecnico;
import Configuracion.Conexion;
import Interface.CRUDtipotecnico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Xavier
 */
public class TipoTecnicoDAO implements CRUDtipotecnico {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    TipoTecnico tipoTecnico=new TipoTecnico();
    
    
    @Override
    public List listar() {
        ArrayList<TipoTecnico>list=new ArrayList<>();        
        String sql="select * from tipotecnicos";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                TipoTecnico tipoTecnico=new TipoTecnico();
                tipoTecnico.setIdTipoTecnico(rs.getInt("idTipoTecnico"));
                tipoTecnico.setNombre(rs.getString("Nombre"));
                tipoTecnico.setDescripcion(rs.getString("Descripcion"));
                list.add(tipoTecnico);
            }
        } catch (Exception e) {
            System.out.println("ModeloDAO.TipoTecnicoDAO.listar() " + e);
        }
        return list;
    }

    @Override
    public TipoTecnico list(int id) {
        String sql="select * from TipoTecnicos where idTipoTecnico="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                tipoTecnico.setIdTipoTecnico(rs.getInt("idTipoTecnico"));
                tipoTecnico.setNombre(rs.getString("Nombre"));
                tipoTecnico.setDescripcion(rs.getString("Descripcion"));
            }
        } catch (Exception e) {
            System.out.println("ModeloDAO.TipoTecnicoDAO.listar() " + e);
        }
        return tipoTecnico;
    }

    @Override
    public boolean add(TipoTecnico tipoTecnico) {
        String sql="insert into TipoTecnicos(Nombre, Descripcion)values('"+tipoTecnico.getNombre()+"','"+tipoTecnico.getDescripcion()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(TipoTecnico tipoTecnico) {
        String sql="update TipoTecnicos set Nombre='"+tipoTecnico.getNombre()+"',Descripcion='"+tipoTecnico.getDescripcion()+"'where idTipoTecnico="+tipoTecnico.getIdTipoTecnico();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from TipoTecnicos where idTipoTecnico="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
