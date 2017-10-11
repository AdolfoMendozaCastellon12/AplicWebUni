/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.controlador;

import com.AplicWebUniSena.dao.ProgramaFDaoImpl;
import com.AplicWebUniSena.modelo.ProgramaFormacion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        ProgramaFDaoImpl progDao = new ProgramaFDaoImpl();
        ProgramaFormacion programaf = new ProgramaFormacion();
        List<ProgramaFormacion> listPrograma = new ArrayList();
        
        String respuesta = null;
        RequestDispatcher rd = null;
        
            try {
                if(request.getParameter("btnAceptar")!=null){
                    programaf.setIdProg(Integer.parseInt(request.getParameter("codprograma")));
                    programaf.setSuc_Fich(request.getParameter("ficha"));
                    programaf.setSuc_nomb(request.getParameter("nombre"));
                    programaf.setTipoF(request.getParameter("tipoformacion"));
                    programaf.setSuc_Estado(request.getParameter("estado"));
                    programaf.setSuc_Elimina(Integer.parseInt(request.getParameter("eliminado")));
                    respuesta =  progDao.insertar(programaf);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarprogramaformacion.jsp");
            }else if(request.getParameter("btnVerDetalle")!=null){
                      programaf = (ProgramaFormacion) progDao.buscarPorID(request.getParameter("codigo"));
                      request.setAttribute("programaf", programaf);
                    rd = request.getRequestDispatcher("ver_programaformacion.jsp");
                    
            }else if(request.getParameter("btnModificar")!=null){
                    programaf = (ProgramaFormacion) progDao.buscarPorID(request.getParameter("codigo"));
                    request.setAttribute("programaf", programaf);
                    rd = request.getRequestDispatcher("Config_programaformacion.jsp");
            }else if (request.getParameter("btnActualizar")!=null){
                    programaf.setIdProg(Integer.parseInt(request.getParameter("codprograma")));
                    programaf.setSuc_Fich(request.getParameter("ficha"));
                    programaf.setSuc_nomb(request.getParameter("nombre"));
                    programaf.setTipoF(request.getParameter("tipo formacion"));
                    programaf.setSuc_Estado(request.getParameter("estado"));
                    //producto.setEstado("Activo");
                    respuesta =  progDao.modificar(programaf);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarprogramaformacion.jsp"); 
                    
                }else if(request.getParameter("btnEliminar")!=null){
                    programaf.setIdProg(Integer.parseInt(request.getParameter("codprograma")));
                    progDao.eliminar(programaf);
                    //request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarprogramaformacion.jsp");
                }else if(request.getParameter("btnBuscar")!=null){
                    int id = Integer.valueOf(request.getParameter("idBusqueda").trim());
                    switch (id) {
                        case 1:
                            programaf.setIdProg(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 2:
                            programaf.setSuc_Fich(request.getParameter("valor"));
                            break;    
                        case 3:
                            programaf.setSuc_nomb(request.getParameter("valor"));
                            break;
                        case 4:
                            programaf.setTipoF(request.getParameter("valor"));
                            break;
                        case 5:
                            programaf.setSuc_Estado(request.getParameter("valor"));
                            break;
                        default:
                            throw new AssertionError();
                    }
                    listPrograma = (List<ProgramaFormacion>)progDao.busquedaPorParametro(request.getParameter("idBusqueda"), programaf);
                    request.setAttribute("listPrograma", listPrograma);
                    rd = request.getRequestDispatcher("buscar_programaformacion.jsp");
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProgramaFSvl.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProgramaFSvl.class.getName()).log(Level.SEVERE, null, ex);
        }
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