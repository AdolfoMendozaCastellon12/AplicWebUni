<%-- 
    Document   : llistarempleado
    Created on : 15/08/2017, 01:00:56 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Empleado</title>
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
              <h3 class="content-header">EMPLEADO </h3>
            </div>
         <div class="porlets-content">
             
          <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  <button  id="editable-sample_new" class="btn btn-primary" onclick="window.location.href='empleado.jsp'">
                                      Nuevo Empleado <i class="fa fa-plus"></i>
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
                                  <th>Código Empleado</th>
                                  <th>Código Tipo Empleado</th>
                                  <th>Apellidos</th>
                                  <th>Nombres</th>
                                  <th>Tipo Documento</th>
                                  <th>Documento Identidad</th>
                                  <th>Fecha Ingreso</th>
                                  <th>Estado</th>
                                  <th>Ver</th>
                                  <th>Configurar</th>
                                  <th>Eliminar</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr class="">
                                  <td>P0001</td>
                                  <td>A0001</td>
                                  <td>Mendoza Mercado</td>
                                  <td>Araceli</td>
                                  <td>Tarjeta Identidad</td>
                                  <td>1004568596</td>
                                  <td>15/05/2016</td>
                                  <td>Habilitado</td>
                                  <td><a class="edit" href="ver_empleado.jsp">Ver</a></td>
                                  <td><a class="delete" href="Config_empleado.jsp">Configurar</a></td>
                                  <td><a class="delete" href="javascript:;">Eliminar</a></td>
                              </tr>
                              
 
            </div><!--/porlets-content-->  
          </div><!--/block-web--> 
        </div><!--/col-md-12--> 
      </div>
        </div>
    </body>
</html>
