/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Cliente;
import Clases.Equipo;
import ModeloDAO.EquipoDAO;
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
public class ControladorEquipo extends HttpServlet {
    String listar="Vistas/Equipo/listar.jsp";
    String add="Vistas/Equipo/add.jsp";
    String edit="Vistas/Equipo/edit.jsp";
    String inicio="index.jsp";
    Equipo equipo = new Equipo();
    Cliente cliente = new Cliente();
    EquipoDAO dao = new EquipoDAO();
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
            out.println("<title>Servlet ControladorEquipo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorEquipo at " + request.getContextPath() + "</h1>");
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
            String tipoEquipo = request.getParameter("txtTipoEquipo");
            String marca = request.getParameter("txtMarca");
            String modelo = request.getParameter("txtModelo");
            String serie = request.getParameter("txtSerie");
            String cedula = request.getParameter("txtCedulaCliente");            
            Cliente cliente = new Cliente();
            equipo.setTipoEquipo(tipoEquipo);
            equipo.setMarca(marca);
            equipo.setModelo(modelo);
            equipo.setSerie(serie);
            cliente.setCedula(cedula);
            equipo.setCliente(cliente);
            dao.add(equipo);
            acceso = listar;
        }else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("idEquipo", request.getParameter("idEquipo"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtIdEquipo"));
            String tipoEquipo = request.getParameter("txtTipoEquipo");
            String marca = request.getParameter("txtMarca");
            String modelo = request.getParameter("txtModelo");
            String serie = request.getParameter("txtSerie");
            String cedula = request.getParameter("txtCedulaCliente");
            
            equipo.setIdEquipo(id);
            equipo.setTipoEquipo(tipoEquipo);
            equipo.setMarca(marca);
            equipo.setModelo(modelo);
            equipo.setSerie(serie);
            cliente.setCedula(cedula);
            equipo.setCliente(cliente);
            dao.edit(equipo);
            acceso = listar;
        }else if(action.equalsIgnoreCase("Eliminar")){
            id=Integer.parseInt(request.getParameter("idEquipo"));
            equipo.setIdEquipo(id);
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
