/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Especialidad;
import ModeloDAO.EspecialidadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mflb0
 */
public class ControladorEspecialidad extends HttpServlet {
    String listar="Vistas/Especialidad/listar.jsp";
    String add="Vistas/Especialidad/add.jsp";
    String edit="Vistas/Especialidad/edit.jsp";
    String inicio="index.jsp";
    Especialidad especialidad = new Especialidad();
    EspecialidadDAO dao = new EspecialidadDAO();
    int id;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorEspecialidad</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorEspecialidad at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("Inicio")){
            acceso = inicio;
        }else if(action.equalsIgnoreCase("add")){
            acceso = add;
        }else if(action.equalsIgnoreCase("Agregar")){
            String nombre = request.getParameter("txtNombre");
            String descripcion = request.getParameter("txtDescripcion");
            especialidad.setNombre(nombre);
            especialidad.setDescripcion(descripcion);
            dao.add(especialidad);
            acceso = listar;
        }else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("idEspecialidad", request.getParameter("idEspecialidad"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtId"));
            String nombre = request.getParameter("txtNombre");
            String descripcion = request.getParameter("txtDescripcion");
            especialidad.setIdEspecialidad(id);
            especialidad.setNombre(nombre);
            especialidad.setDescripcion(descripcion);
            dao.edit(especialidad);
            acceso = listar;
        }else if(action.equalsIgnoreCase("Eliminar")){
            id=Integer.parseInt(request.getParameter("idEspecialidad"));
            especialidad.setIdEspecialidad(id);
            dao.eliminar(id);
            acceso  = listar;        
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
