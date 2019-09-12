/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;
import Clases.TipoTecnico;
import java.util.List;
/**
 *
 * @author Xavier
 */
public interface CRUDtipotecnico {
    public List listar();
    public TipoTecnico list(int id);
    public boolean add(TipoTecnico tipoTecnico);
    public boolean edit(TipoTecnico tipoTecnico);
    public boolean eliminar(int id);
    
}
