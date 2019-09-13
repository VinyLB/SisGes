/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Cliente;
import ModeloDAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mflb0
 */
public class ControladorCliente extends HttpServlet {
    String listar="Vistas/Cliente/listar.jsp";
    String add="Vistas/Cliente/add.jsp";
    String edit="Vistas/Cliente/edit.jsp";
    String inicio="index.jsp";
    Cliente cliente = new Cliente();
    ClienteDAO dao = new ClienteDAO();
    String id;

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
            out.println("<title>Servlet ControladorCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorCliente at " + request.getContextPath() + "</h1>");
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
        String acceso = "";
        String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("Inicio")){
            acceso = inicio;
        }else if(action.equalsIgnoreCase("add")){
            acceso = add;
        }else if(action.equalsIgnoreCase("Agregar")){
            String cedula = request.getParameter("txtCedulaCliente");
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String usuario = request.getParameter("txtUsuario");
            String clave = request.getParameter("txtClave");
            String telefono = request.getParameter("txtTelefono");
            String direccion = request.getParameter("txtDireccion");
            String correo = request.getParameter("txtCorreo");
            cliente.setCedula(cedula);
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setUsuario(usuario);
            cliente.setClave(clave);
            cliente.setTelefono(telefono);
            cliente.setDireccion(direccion);
            cliente.setCorreo(correo);
            dao.add(cliente);
            acceso = listar;
        }else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("cedulaCliente", request.getParameter("cedulaCliente"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            id=request.getParameter("txtCedulaCliente");
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String usuario = request.getParameter("txtUsuario");
            String clave = request.getParameter("txtClave");
            String telefono = request.getParameter("txtTelefono");
            String direccion = request.getParameter("txtDireccion");
            String correo = request.getParameter("txtCorreo");
            cliente.setCedula(id);
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setUsuario(usuario);
            cliente.setClave(clave);
            cliente.setTelefono(telefono);
            cliente.setDireccion(direccion);
            cliente.setCorreo(correo);
            dao.edit(cliente);
            acceso = listar;
        }else if(action.equalsIgnoreCase("Eliminar")){
            id=request.getParameter("cedulaCliente");
            cliente.setCedula(id);
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
