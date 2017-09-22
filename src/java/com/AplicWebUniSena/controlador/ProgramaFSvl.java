/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.controlador;

import com.AplicWebUniSena.dao.ProgramaFDaoImpl;
import com.AplicWebUniSena.modelo.programaformacion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Estudiante
 */
@WebServlet(name = "ProgramaFSvl", urlPatterns = {"/programafsvl"})
public class ProgramaFSvl extends HttpServlet {

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
        ProgramaFDaoImpl ProgDao = new ProgramaFDaoImpl();
        programaformacion programaf = new programaformacion();
        
        String respuesta = null;
        RequestDispatcher rd = null;
        
            try {
                if(request.getParameter("btnAceptar")!=null){
//                  programaf.setIdProg(Integer.parseInt(request.getParameter("codprograma")));
                    programaf.setSuc_Fich(request.getParameter("ficha"));
                    programaf.setSuc_nomb(request.getParameter("nombre"));
                    programaf.setTipoF(request.getParameter("tipoformacion"));
                    programaf.setSuc_Estado(request.getParameter("Activo"));
                    respuesta =  ProgDao.insertar(programaf);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarprogramaformacion.jsp");
            }else if(request.getParameter("btnVerDetalle")!=null){
                      programaf = (programaformacion) ProgDao.buscarPorID(request.getParameter("codigo"));
                      request.setAttribute("programaf", programaf);
                    rd = request.getRequestDispatcher("ver_programaformacion.jsp");
                    
            }else if(request.getParameter("btnModificar")!=null){
                    programaf = (programaformacion) ProgDao.buscarPorID(request.getParameter("codigo"));
                    request.setAttribute("programaf", programaf);
                    rd = request.getRequestDispatcher("Config_programaformacion.jsp");
            }else if (request.getParameter("btnActualizar")!=null){
                    programaf.setIdProg(Integer.parseInt(request.getParameter("codprograma")));
                    programaf.setSuc_Fich(request.getParameter("ficha"));
                    programaf.setSuc_nomb(request.getParameter("nombre"));
                    programaf.setTipoF(request.getParameter("tipo formacion"));
                    programaf.setSuc_Estado(request.getParameter("estado"));
                    //producto.setEstado("Activo");
                    respuesta =  ProgDao.modificar(programaf);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarprogramaformacion.jsp"); 
                    
                }else if(request.getParameter("btnEliminar")!=null){
                    programaf.setIdProg(Integer.parseInt(request.getParameter("codprograma")));
                    ProgDao.eliminar(programaf);
                    //request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarprogramaformacion.jsp");
                }
            }catch(NumberFormatException | SQLException e){
                System.out.println("Problemas en el server: " + e.toString());
            }
            rd.forward(request, response);
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
        processRequest(request, response);
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
