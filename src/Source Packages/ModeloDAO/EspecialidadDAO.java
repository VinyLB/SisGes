/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Clases.Especialidad;
import Configuracion.Conexion;
import Interface.CRUDespecialidad;
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
public class EspecialidadDAO implements CRUDespecialidad{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Especialidad especialidad1 = new Especialidad();
    
    @Override
    public List listar() {
        ArrayList<Especialidad>list = new ArrayList<>();
        String sql="select * from especialidades";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Especialidad especialidad = new Especialidad();
                especialidad.setIdEspecialidad(rs.getInt("idEspecialidad"));
                especialidad.setNombre(rs.getString("nombre"));
                especialidad.setDescripcion(rs.getString("descripcion"));
                list.add(especialidad);
                
            }
            
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Especialidad list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Especialidad especialidad) {
        String sql = "insert into especialidades(nombre, descripcion) values('" + especialidad.getNombre() + "','" + especialidad.getDescripcion() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ModeloDAO.EspecialidadDAO.add()" + e);
        }
        return false;
    }

    @Override
    public boolean edit(Especialidad especialidad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
