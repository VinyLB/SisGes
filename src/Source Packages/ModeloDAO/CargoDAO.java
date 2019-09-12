
package ModeloDAO;

import Clases.Cargo;
import Clases.Especialidad;
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
Cargo p=new Cargo ();

    @Override
    public List Listar() {
        ArrayList <Cargo>List=new ArrayList <>();
        String sql= "select * from Cargo";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
           rs = ps.executeQuery();
            while(rs.next()){
                Cargo car = new Cargo();
                car.setIdcargo(rs.getInt("idcargo"));
                car.setNombre(rs.getString("nombre"));
                car.setDescripcion(rs.getString("descripcion"));
                list.add(car); 
        }
    } catch (SQLException ex) {
        Logger.getLogger(CargoDAO.class.getName()).log(Level.SEVERE, null, ex);
    }

    @Override
    public Cargo list(int idCargo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    
    }

    @Override
    public boolean add(Cargo car) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Cargo car) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    
}
