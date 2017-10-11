<%-- 
    Document   : listartipoempleado
    Created on : 15/08/2017, 06:26:23 PM
    Author     : FLIACHICA
--%>
<%@page import="com.AplicWebUniSena.modelo.TipoEmpleado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.AplicWebUniSena.dao.TipoEmpDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Tipo Empleado</title>
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
              <h3 class="content-header"> TIPOS EMPLEADO </h3>
            </div>
         <div class="porlets-content">
          <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div>
                                  <button id="editable-sample_new" class="btn btn-primary" onclick="window.location.href='tipoempleado.jsp'">
                                      Nuevo Tipo Empleado <i class="fa fa-plus"></i>
                                  </button>
                              </div>
                               
                          <div class="col-md-5 search_group ">
                                <div class="panel-heading">
                  <form class="form-inline" action="tipoempsvl" method="get">
                    <label class="sr-only" for="inlineFormCustomSelect">Parametro</label>
                    <select class="form-control" id="inlineFormCustomSelect" name="idBusqueda">
                       <!-- <option value="0" selected>- Seleccione -</option> -->
                      <option value="1">Código Tipo Empleado</option>
                      <option value="2">Descripción</option>
                      <option value="3">Estado</option>
                      
                    </select>
                    <input type="text" class="form-control" id="inputBuscar" name="valor" >
                    <button type="submit" class="btn btn-primary" name="btnBuscar" value="buscar">Buscar</button>
                  </form>
              </div>
                          </div>
                               
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
                                  <th>Código Tipo Empleado</th>
                                  <th>Descripción</th>
                                  <th>Estado</th>
                                  <th>Ver</th>
                                  <th>Configurar</th>
                                  <th>Eliminar</th>
                              </tr>
                              </thead>
                              <tbody>
                                  <%
                      if(request.getAttribute("listTipoempleado")!=null){
                      List<TipoEmpleado> listTipoempleado = new ArrayList();
                      listTipoempleado= (List<TipoEmpleado>) request.getAttribute("listTipoempleado");
                      
                      
                      for(TipoEmpleado te : listTipoempleado){
                   %>
                              <tr class="">
                                  <td><%= te.getIdTipoEmp()%></td>
                                  <td><%= te.getSuc_Descrip()%></td>
                                  <td><%= te.getSuc_Estado()%></td>
                                  <td><form action="tipoempsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnVerDetalle">Ver
                                
                                </a>
                             <input type="hidden" name="btnVerDetalle" value="modificar"/>
                             <input type="hidden" name="codigo" value='<%= te.getIdTipoEmp()%>'/>
                            </form> </td>
                                  <td><form action="tipoempsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnModificar">Configurar
                                
                                </a>
                             <input type="hidden" name="btnModificar" value="modificar"/>
                             <input type="hidden" name="codigo" value='<%= te.getIdTipoEmp()%>'/>
                            </form> </td>
                                  <td><form action="tipoempsvl" method="get">
                                <a href="javascript:;" onclick="parentNode.submit();" name="btnEliminar">Eliminar
                                    
                                </a>
                                <input type="hidden" name="btnEliminar" value="eliminar"/>
                                <input type="hidden" name="cod" value='<%= te.getIdTipoEmp()%>'/>
                            </form>                  </td>
                              </tr>
                             <% 
                             }
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
