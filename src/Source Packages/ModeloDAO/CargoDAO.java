
package ModeloDAO;

import Clases.Cargo;
import Configuracion.Conexion;
import Interface.CRUDCargos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CargoDAO implements CRUDCargos {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cargo cargo=new Cargo();

    @Override
    public List Listar() {
        ArrayList<Cargo>list = new ArrayList<>();
        String sql="select * from cargos";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Cargo car = new Cargo();
                car.setIdCargo(rs.getInt("idCargo"));
                car.setNombre(rs.getString("Nombre"));
                car.setDescripcion(rs.getString("Descripcion"));
                list.add(car);                
            }
            
        } catch (Exception e) {
            System.out.println("ModeloDAO.CargoDAO.listar() " + e);
        }
        return list;
    }

    @Override
    public Cargo list(int idCargo) {
        String sql="select * from cargos where idCargo=" + idCargo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cargo.setIdCargo(rs.getInt("idCargo"));
                cargo.setNombre(rs.getString("nombre"));
                cargo.setDescripcion(rs.getString("descripcion"));
                
            }
            
        } catch (Exception e) {
        }
        return cargo;
    }

    @Override
    public boolean add(Cargo car) {
        String sql = "insert into cargos(nombre, descripcion) values('" + car.getNombre() + "','" + car.getDescripcion() + "')";
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
    public boolean edit(Cargo car) {
        String sql = "update cargos set nombre='" + car.getNombre() + "',descripcion='" + car.getDescripcion() + "' where idCargo=" + car.getIdCargo();
        try {
            con = cn.getConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ModeloDAO.EspecialidadDAO.edit() " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from cargos where idCargo="+ id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    
}
