/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Clases.Equipo;
import java.util.List;

/**
 *
 * @author mflb0
 */
public interface CRUDequipo {
  public List Listar();
  public Equipo list (int idEquipo);
  public boolean add(Equipo equipo);
  public boolean edit(Equipo equipo);
  public boolean eliminar(int idEquipo);
    
}
