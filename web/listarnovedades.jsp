<%-- 
    Document   : listarnovedades
    Created on : 16/08/2017, 03:38:49 PM
    Author     : ESTUDIANTES
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.AplicWebUniSena.modelo.Novedad"%>
<%@page import="com.AplicWebUniSena.dao.NovedadDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Novedades</title>
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/animate.css" rel="stylesheet" type="text/css" />
        <link href="css/admin.css" rel="stylesheet" type="text/css" />
        <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link href="plugins/kalendar/kalendar.css" rel="stylesheet">
        <link rel="stylesheet" href="plugins/scroll/nanoscroller.css">
        <link href="plugins/morris/morris.css" rel="stylesheet" />
    
        
    </head>
    <%
      NovedadDaoImpl dao = new NovedadDaoImpl();
      List<Novedad> listNoved = new ArrayList();
      
   %>
    <body style="background-image: url(images/descarga.jpg);">
        <div class="pull-left breadcrumb_admin clear_both">
            
        </div>
        <div class="container clear_both padding_fix">
    
        <div class="row">
        <div class="col-md-12">
          <div class="block-web">
            <div class="header">
              <h3 class="content-header">NOVEDADES</h3>
            </div>
         <div class="porlets-content">
             
          <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div>
                                  <button id="editable-sample_new" class="btn btn-primary" onclick="window.location.href='novedades.jsp'">
                                      Nuevas Novedades <i class="fa fa-plus"></i>
                                  </button>
                              </div>
                              
                          <div class="col-md-5 search_group ">
                                <div class="panel-heading">
                  <form class="form-inline" action="novedadsvl" method="get">
                    <label class="sr-only" for="inlineFormCustomSelect">Parametro</label>
                    <select class="form-control" id="inlineFormCustomSelect" name="idBusqueda">
                      <!--  <option value="0" selected>- Seleccione -</option> -->
                      <option value="1">Código Novedades</option>
                      <option value="2">Nro Matriculados Ordinarios</option>
                      <option value="3">Nro Matriculados Extemporaneos</option>
                      <option value="4">Retiros Voluntarios Mes</option>
                      <option value="5">Total Retiros</option>
                      <option value="6">Cancelaciones Mes</option>
                      <option value="7">Cancelaciones Ficha</option>
                      <option value="8">Aplazamiento Lectivo</option>
                      <option value="9">Aprendices Registrados</option>
                      <option value="10">Aprendices Formacion</option>
                      <option value="11">Fecha Registro</option>
                      <option value="12">Código Informe</option>
                    </select>
                  <input type="text" class="form-control" id="inputBuscar" placeholder="Buscar..." name="valor">                 
                  <span class=""><button class="btn btn-primary" type="submit" name="btnBuscar" value="buscar"><i class="fa fa-search"></i> Buscar</button></span>
                  </form>
              </div>
                          </div>
                               
                                  

                                  
                              </div>
                          </div>
                          <div class="margin-top-10"></div>
                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                              <thead>
                              <tr>
                                  <th>Código Novedades</th>
                                  <th>Nro Matriculados Ordinarios</th>
                                  <th>Nro Matriculados Extemporaneos</th>
                                  <th>Retiros Voluntarios Mes</th>
                                  <th>Total Retiros</th>
                                  <th>Aplazamiento Lectivo</th>
                                  <th>Aprendices Registrados</th>
                                  <th>Aprendices Formacion</th>
                                  <th>Fecha Registro</th>
                                  <th>Código Informe</th>
                                  <th>Ver</th>
                                  <th>Configurar</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                                   <%
                      listNoved = dao.listar();
                      for(Novedad ndad : listNoved){
                   %>
                              <tr class="">
                                  <td><%= ndad.getIdNoved()%></td>
                                  <td><%= ndad.getNro_matriOrdi()%></td>
                                  <td><%= ndad.getNro_matriExtemp()%></td>
                                  <td><%= ndad.getRetiVoluntmes()%></td>
                                  <td><%= ndad.getTotalReti()%></td>
                                  <td><%= ndad.getAplazamLect()%></td>
                                  <td><%= ndad.getAprendiceReg()%></td>
                                  <td><%= ndad.getAprendiceFor()%></td>
                                  <td><%= ndad.getFechaRegistro()%></td>
                                  <td><%= ndad.getIdInfor()%></td>
                                  <td class="center"><form action="novedadsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnVerDetalle">Ver
                                
                                </a>
                             <input type="hidden" name="btnVerDetalle" value="modificar"/>
                             <input type="hidden" name="codigo" value='<%= ndad.getIdNoved()%>'/>
                            </form> </td>
                                  <td><form action="novedadsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnModificar">Configurar
                                
                                </a>
                             <input type="hidden" name="btnModificar" value="modificar"/>
                             <input type="hidden" name="codigo" value='<%= ndad.getIdNoved()%>'/>
                            </form></td>
                                  
                              </tr>
                              <% } %>
                               </tbody>
                           </table>
                        </div>
                    </div>
                 </div>
             </div>
        </div>  
    </body>
    </body>
</html>
