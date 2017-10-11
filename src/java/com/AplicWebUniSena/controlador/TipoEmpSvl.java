/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.controlador;

import com.AplicWebUniSena.dao.TipoEmpDaoImpl;
import com.AplicWebUniSena.modelo.TipoEmpleado;
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
@WebServlet(name = "TipoEmpSvl", urlPatterns = {"/tipoempsvl"})
public class TipoEmpSvl extends HttpServlet {

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
            throws ServletException, IOException, SQLException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        TipoEmpDaoImpl tipoEdao = new TipoEmpDaoImpl();
        TipoEmpleado tipoemp = new TipoEmpleado();
        List<TipoEmpleado> listTipoempleado = new ArrayList();
        String respuesta = null;
        RequestDispatcher rd = null;
        
            try {
                if(request.getParameter("btnAceptar")!=null){
                    tipoemp.setIdTipoEmp(Integer.parseInt(request.getParameter("codtipoempleado")));
                    tipoemp.setSuc_Descrip(request.getParameter("descripcion"));
                    tipoemp.setSuc_Estado(request.getParameter("estado"));
                    tipoemp.setSuc_Elimina(Integer.parseInt(request.getParameter("eliminado")));
                    respuesta =  tipoEdao.insertar(tipoemp);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listartipoempleado.jsp");
            }else if(request.getParameter("btnVerDetalle")!=null){
                      tipoemp = (TipoEmpleado) tipoEdao.buscarPorID(request.getParameter("codigo"));

                    request.setAttribute("tipoemp", tipoemp);
                    rd = request.getRequestDispatcher("ver_tipoempleado.jsp");
            }else if(request.getParameter("btnEliminar")!=null){
                    tipoemp.setIdTipoEmp(Integer.parseInt(request.getParameter("cod")));
                    tipoEdao.eliminar(tipoemp);
                    //request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listartipoempleado.jsp");
            }else if(request.getParameter("btnModificar")!=null){
                    tipoemp = (TipoEmpleado) tipoEdao.buscarPorID(request.getParameter("codigo"));
                    request.setAttribute("tipoemp", tipoemp);
                    rd = request.getRequestDispatcher("Config_tipoempleado.jsp");   
                }else if (request.getParameter("btnActualizar")!=null){
                    tipoemp.setIdTipoEmp(Integer.parseInt(request.getParameter("codtipoe")));
                    tipoemp.setSuc_Descrip(request.getParameter("descripcion"));
                    tipoemp.setSuc_Estado(request.getParameter("estado"));
                    //producto.setEstado("Activo");
                    respuesta =  tipoEdao.modificar(tipoemp);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listartipoempleado.jsp");
                }else if(request.getParameter("btnBuscar")!=null){
                    int id = Integer.valueOf(request.getParameter("idBusqueda").trim());
                    switch (id) {
                        case 1:
                            tipoemp.setIdTipoEmp(Integer.parseInt(request.getParameter("valor")));
                            break;                        
                        case 2:
                            tipoemp.setSuc_Descrip(request.getParameter("valor"));
                            break;
                        case 3:
                            tipoemp.setSuc_Estado(request.getParameter("valor"));
                            break;
                        
                        default:
                            throw new AssertionError();
                    }
                    listTipoempleado = (List<TipoEmpleado>)tipoEdao.busquedaPorParametro(request.getParameter("idBusqueda"), tipoemp);
                    request.setAttribute("listTipoempleado", listTipoempleado);
                    rd = request.getRequestDispatcher("buscar_tipoempleado.jsp");
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
            Logger.getLogger(TipoEmpSvl.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TipoEmpSvl.class.getName()).log(Level.SEVERE, null, ex);
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
