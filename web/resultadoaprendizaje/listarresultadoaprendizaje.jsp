<%-- 
    Document   : listarresultadoaprendizaje
    Created on : 16/08/2017, 03:08:24 PM
    Author     : ESTUDIANTES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Resultado Aprendizaje</title>
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
        <body style="background-color: #f1f1f1;">
        <div class="pull-left breadcrumb_admin clear_both">
            
        </div>
        <div class="container clear_both padding_fix">
    
        <div class="row">
        <div class="col-md-12">
          <div class="block-web">
            <div class="header">
              <h3 class="content-header"> RESULTADO DE APRENDIZAJE </h3>
            </div>
         <div class="porlets-content">
             
          <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  <button id="editable-sample_new" class="btn btn-primary" onclick="window.location.href='resultadoaprendizaje.jsp'">
                                      Nuevo Resultado Aprendizaje <i class="fa fa-plus"></i>
                                  </button>
                              </div>
                              <form class="">
                          <div class="col-md-4 col-md-push-8 search_group ">
                                <input type="text" class="form-control" placeholder="Buscar...">                 
                                <span class=""><button class="btn btn-primary btn_space" type="button"><i class="fa fa-search"></i> Buscar</button></span>
                          </div>
                               </form>
                                  

                                  
                              </div>
                          </div>
                          <div class="margin-top-10"></div>
                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                              <thead>
                              <tr>
                                  <th class="center">Código Resultado</th>
                                  <th class="center">Nombre</th>
                                  <th class="center">Descripcion</th>
                                  <th class="center">Estado</th>
                                  <th class="center">Ver</th>
                                  <th class="center">Configurar</th>
                                  <th class="center">Eliminar</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr class="">
                                  <td class="center">P0001</td>
                                  <td class="center">Luis</td>
                                  <td class="center">10</td>
                                  <td class="center">Activo</td>
                                  <td class="center"><a class="edit" href="ver_resultadoaprendizaje.jsp">Ver</a></td>
                                  <td class="center"><a class="edit" href="Config_resultadoaprendizaje.jsp">Configurar</a></td>
                                  <td class="center"><a class="delete" href="javascript:;">Eliminar</a></td>
                              
                              </tbody>
                          </table>
                       </div>
                 </div>
             </div>
         </div>
       </div>
    </body>
</html>
