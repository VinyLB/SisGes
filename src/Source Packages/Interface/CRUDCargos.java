
package Interface;

import Clases.Cargo;
import java.util.List;

public interface CRUDCargos {
  public List Listar();
  public Cargo list (int idCargo);
  public boolean add(Cargo car);
  public boolean edit(Cargo car);
  public boolean eliminar(int id);
  
  
}
