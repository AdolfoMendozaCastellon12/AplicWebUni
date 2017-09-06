<%-- 
    Document   : listarprogramaformacion
    Created on : 15/08/2017, 06:45:26 PM
    Author     : FLIACHICA
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.AplicWebUniSena.modelo.programaformacion"%>
<%@page import="java.util.List"%>
<%@page import="com.AplicWebUniSena.dao.ProgramaFDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Programa Formación</title>
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <link href="../css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/animate.css" rel="stylesheet" type="text/css" />
        <link href="../css/admin.css" rel="stylesheet" type="text/css" />
        <link href="../css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link href="../plugins/kalendar/kalendar.css" rel="stylesheet">
        <link rel="stylesheet" href="../plugins/scroll/nanoscroller.css">
        <link href="../plugins/morris/morris.css" rel="stylesheet" />
    </head>
     <%
      ProgramaFDaoImpl dao = new ProgramaFDaoImpl();
      List<programaformacion> listProgF = new ArrayList();
      
   %>
    <body style="background-color: #f1f1f1;">
        <div class="pull-left breadcrumb_admin clear_both">
            
        </div>
        <div class="container clear_both padding_fix">
            
               <div class="row">
        <div class="col-md-12">
          <div class="block-web">
            <div class="header">
              <h3 class="content-header">PROGRAMA FORMACION</h3>
            </div>
         <div class="porlets-content">
          <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  <button id="editable-sample_new" class="btn btn-primary" onclick="window.location.href='programaformacion.jsp'">
                                      Nuevo Programa <i class="fa fa-plus"></i>
                                  </button>
                              </div>
                               <form class="">
                          <div class="col-md-4 col-md-push-8 search_group ">
                                <input type="text" class="form-control" placeholder="Buscar...">                 
                                <span class=""><button class="btn btn-primary btn_space" type="button"><i class="fa fa-search"></i> Buscar</button></span>
                          </div>
                               </form>
                              <div class="btn-group pull-right">
                                  
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#">Print</a></li>
                                      <li><a href="#">Save as PDF</a></li>
                                      <li><a href="#">Export to Excel</a></li>
                                  </ul>
                              </div>
                          </div>
                          <div class="margin-top-10"></div>
                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                              <thead>
                              <tr>
                                  <th>Código Programa</th>
                                  <th>Ficha</th>
                                  <th>Nombre</th>
                                  <th>Tipo Formación</th>
                                  <th>Estado</th>
                                  <th>Ver</th>
                                  <th>Configurar</th>
                                  <th>Eliminar</th>
                              </tr>
                              </thead>
                              <tbody>
                                   <%
                      listProgF = dao.listar();
                      for(programaformacion pf : listProgF){
                   %>
                              <tr class="">
                                  <td><%= pf.getIdProg()%></td>
                                  <td><%= pf.getSuc_Fich()%></td>
                                  <td><%= pf.getSuc_nomb()%></td>
                                  <td><%= pf.getTipoF()%></td>
                                  <td><%= pf.getSuc_Estado()%></td>
                                  <td><a class="edit" href="ver_programaformacion.jsp">Ver</a></td>
                                  <td><a class="delete" href="Config_programaformacion.jsp">Configurar</a></td>
                                  <td><a class="delete" href="javascript:;">Eliminar</a></td>
                              </tr>
                              <% } %>
                              </tbody>
                          </table>
                      </div>
 
            </div><!--/porlets-content-->  
          </div><!--/block-web--> 
        </div><!--/col-md-12--> 
      </div><!--/row-->
        </div>
    </body>
</html>
