/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AplicWebUniSena.controlador;

import com.AplicWebUniSena.dao.NovedadDaoImpl;
import com.AplicWebUniSena.modelo.Novedad;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author FLIACHICA
 */
@WebServlet(name = "NovedadSvl", urlPatterns = {"/novedadsvl"})
public class NovedadSvl extends HttpServlet {

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
            NovedadDaoImpl novedadDao =  new NovedadDaoImpl();
            Novedad noved = new Novedad();
            List<Novedad> listNovedad = new ArrayList();
            
            String respuesta = null;
            RequestDispatcher rd = null;
            try {
                if(request.getParameter("btnAceptar")!=null){
                    noved.setIdNoved(Integer.parseInt(request.getParameter("codnovedad")));
                    noved.setNro_matriOrdi(Integer.parseInt(request.getParameter("matriculadosordinarios")));
                    noved.setNro_matriExtemp(Integer.parseInt(request.getParameter("matriculadosextemporaneo")));
                    noved.setRetiVoluntmes(Integer.parseInt(request.getParameter("retirosvoluntarios")));
                    noved.setTotalReti(Integer.parseInt(request.getParameter("totalretiros")));
                    noved.setCancelM(Integer.parseInt(request.getParameter("cancelacionmes")));
                    noved.setCancelFich(Integer.parseInt(request.getParameter("cancelacionficha")));
                    noved.setAplazamLect(Integer.parseInt(request.getParameter("aplazamientolectivo")));
                    noved.setAprendiceReg(Integer.parseInt(request.getParameter("aprendicesregistrados")));
                    noved.setAprendiceFor(Integer.parseInt(request.getParameter("aprendicesformacion")));
                    noved.setFechaRegistro(Date.valueOf(request.getParameter("fecharegistro")));
                    noved.setIdInfor(Integer.parseInt(request.getParameter("codinforme")));
                    noved.setSuc_Elimina(Integer.parseInt(request.getParameter("eliminado")));
                    respuesta =  novedadDao.insertar(noved);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarnovedades.jsp");
                }else if(request.getParameter("btnVerDetalle")!=null){
                    noved   = (Novedad) novedadDao.buscarPorID(request.getParameter("codigo"));

                    request.setAttribute("noved", noved);
                    rd = request.getRequestDispatcher("ver_novedades.jsp");
                }else if(request.getParameter("btnModificar")!=null){
                       noved = (Novedad) novedadDao.buscarPorID(request.getParameter("codigo"));
                    request.setAttribute("noved", noved);
                    rd = request.getRequestDispatcher("Config_novedades.jsp");
                }else if (request.getParameter("btnActualizar")!=null){
                    noved.setIdNoved(Integer.parseInt(request.getParameter("codnovedad")));
                    noved.setNro_matriOrdi(Integer.parseInt(request.getParameter("numerosordinarios")));
                    noved.setNro_matriExtemp(Integer.parseInt(request.getParameter("numerosextemporaneos")));
                    noved.setRetiVoluntmes(Integer.parseInt(request.getParameter("retirosvoluntarios")));
                    noved.setTotalReti(Integer.parseInt(request.getParameter("totalretiros")));
                    noved.setCancelM(Integer.parseInt(request.getParameter("cancelacionmes")));
                    noved.setCancelFich(Integer.parseInt(request.getParameter("cancelacionficha")));
                    noved.setAplazamLect(Integer.parseInt(request.getParameter("aplazamientolectivo")));
                    noved.setAprendiceReg(Integer.parseInt(request.getParameter("aprendicesregistrados")));
                    noved.setAprendiceFor(Integer.parseInt(request.getParameter("aprendicesformacion")));
                    noved.setFechaRegistro(Date.valueOf(request.getParameter("fecha")));
                    noved.setIdInfor(Integer.parseInt(request.getParameter("codinforme")));
                    //producto.setEstado("Activo");
                    respuesta =  novedadDao.modificar(noved);
                    request.setAttribute("respuesta", respuesta);
                    rd = request.getRequestDispatcher("listarnovedades.jsp"); 
                }else if(request.getParameter("btnBuscar")!=null){
                     int id = Integer.valueOf(request.getParameter("idBusqueda").trim());
                    switch (id) {
                        case 1:
                            noved.setIdNoved(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 2:
                            noved.setNro_matriOrdi(Integer.parseInt(request.getParameter("valor")));
                            break;    
                        case 3:
                            noved.setNro_matriExtemp(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 4:
                            noved.setRetiVoluntmes(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 5:
                            noved.setTotalReti(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 6:
                            noved.setCancelM(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 7:
                            noved.setCancelFich(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 8:
                            noved.setAplazamLect(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 9:
                            noved.setAprendiceReg(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 10:
                            noved.setAprendiceFor(Integer.parseInt(request.getParameter("valor")));
                            break;
                        case 11:
                            noved.setFechaRegistro(Date.valueOf(request.getParameter("valor")));
                            break;
                        case 12:
                            noved.setIdInfor(Integer.parseInt(request.getParameter("valor")));
                            break;
                        default:
                            throw new AssertionError();
                    }
                    listNovedad = (List<Novedad>)novedadDao.busquedaPorParametro(request.getParameter("idBusqueda"), noved);
                    request.setAttribute("listNovedad", listNovedad);
                    rd = request.getRequestDispatcher("buscar_novedades.jsp");
                }
            } catch (NumberFormatException | SQLException e) {
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
