package Interface;

import Clases.Especialidad;
import java.util.List;

public interface CRUDespecialidad {
    public List listar();
    public Especialidad list(int id);
    public boolean add(Especialidad especialidad);
    public boolean edit(Especialidad especialidad);
    public boolean eliminar(int id);
}
