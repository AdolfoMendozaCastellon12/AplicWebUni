<%-- 
    Document   : listarprogramaformacion
    Created on : 15/08/2017, 06:45:26 PM
    Author     : FLIACHICA
--%>
<%@page import="com.AplicWebUniSena.modelo.ProgramaFormacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.AplicWebUniSena.dao.ProgramaFDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Programa Formación</title>
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
     
    <body style="background-image: url(images/descarga.jpg);">
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
                          </div>
              
                    <!-- Tabla programa formacion -->           
                          <div class="col-md-4 search_group ">
                              <div class="panel-heading">
                  <form class="form-inline" action="programafsvl" method="get">
                    <label class="sr-only" for="inlineFormCustomSelect">Parametro</label>
                    <select class="form-control" id="inlineFormCustomSelect" name="idBusqueda">
                      <!-- <option value="0" selected>- Seleccione -</option> -->
                      <option value="1">Código Programa</option>
                      <option value="2">Ficha</option>
                      <option value="3">Nombre</option>
                      <option value="4">Tipo Formacion</option>
                      <option value="5">Estado</option>
                    </select>
                  <input type="text" class="form-control" id="inputBuscar" placeholder="Buscar..." name="valor">                 
                  <span class=""><button class="btn btn-primary" type="submit" name="btnBuscar" value="buscar"><i class="fa fa-search"></i> Buscar</button></span>
                  </form>
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
                      if(request.getAttribute("listPrograma")!=null){
                      List<ProgramaFormacion> listPrograma = new ArrayList();
                      listPrograma = (List<ProgramaFormacion>) request.getAttribute("listPrograma");
                      
                      
                      for(ProgramaFormacion pf : listPrograma){
                   %>
                              <tr class="">
                                  <td><%= pf.getIdProg()%></td>
                                  <td><%= pf.getSuc_Fich()%></td>
                                  <td><%= pf.getSuc_nomb()%></td>
                                  <td><%= pf.getTipoF()%></td>
                                  <td><%= pf.getSuc_Estado()%></td>
                                  <td><form action="programafsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnVerDetalle">Ver
                                
                                </a>
                             <input type="hidden" name="btnVerDetalle" value="modificar"/>
                             <input type="hidden" name="codigo" value='<%= pf.getIdProg()%>'/>
                            </form> </td>
                                  <td><form action="programafsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnModificar">Configurar
                                
                                </a>
                             <input type="hidden" name="btnModificar" value="modificar"/>
                             <input type="hidden" name="codigo" value='<%= pf.getIdProg()%>'/>
                            </form></td>
                                  <td><form action="programafsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnEliminar">Eliminar
                                    
                                </a>
                                <input type="hidden" name="btnEliminar" value="eliminar"/>
                                <input type="hidden" name="codprograma" value='<%= pf.getIdProg()%>'/>
                            </form>         </td>
                              </tr>
                              <% }
                              }else{
                        out.println("No se encontro registro");
                    }
                              %>
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
