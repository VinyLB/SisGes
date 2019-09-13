/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.TipoTecnico;
import ModeloDAO.TipoTecnicoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Xavier
 */
public class ControladorTipoTecnico extends HttpServlet {

    String listar = "Vistas/TipoTecnico/listar.jsp";
    String add = "Vistas/TipoTecnico/add.jsp";
    String edit = "Vistas/TipoTecnico/edit.jsp";
    String inicio="index.jsp";
    TipoTecnico tipoTecnico=new TipoTecnico();
    TipoTecnicoDAO tipoTecnicoDAO = new TipoTecnicoDAO();
    int id;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorTipoTecnico</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorTipoTecnico at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("Inicio")){
            acceso = inicio;
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String nombre=request.getParameter("txtNombre");
            String descripcion=request.getParameter("txtDescripcion");
            tipoTecnico.setNombre(nombre);
            tipoTecnico.setDescripcion(descripcion);
            tipoTecnicoDAO.add(tipoTecnico);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idTipoTecnico", request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtIdTipoTecnico"));
            String nombre=request.getParameter("txtNombre");
            String descripcion=request.getParameter("txtDescripcion");
            tipoTecnico.setIdTipoTecnico(id);
            tipoTecnico.setNombre(nombre);
            tipoTecnico.setDescripcion(descripcion);
            tipoTecnicoDAO.edit(tipoTecnico);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){ 
            id=Integer.parseInt(request.getParameter("id"));
            tipoTecnico.setIdTipoTecnico(id);
            tipoTecnicoDAO.eliminar(id);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
