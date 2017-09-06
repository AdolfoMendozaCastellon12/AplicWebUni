<%-- 
    Document   : programaformacion
    Created on : 18/08/2017, 03:31:04 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ULTIMO Admin Dashboard Template</title>
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
            String codigo =  dao.generarCodigo();
        %>
    <body style="background-color: #f1f1f1;">

  <!--\\\\\\\ wrapper Start \\\\\\-->

  <!--\\\\\\\ header end \\\\\\-->
  
    <!--\\\\\\\ inner start \\\\\\-->
    <!--\\\\\\\left_nav end \\\\\\-->
   
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
        
  
      </div>
      <div class="container clear_both padding_fix">
       
        <div class="row">
           <div class="col-md-3"></div>  
        <div class="col-md-5">
          <div class="block-web">
            <div class="header">
              
              <h3 class="content-header">PROGRAMA FORMACION</h3>
            </div>
            <div class="porlets-content">
              <form action="programafsvl" method="post" class="form-horizontal row-border">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Codigo Programa</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" name="codprograma">
                  </div>
                </div><!--/form-group--> 

                <div class="form-group">
                  <label class="col-sm-3 control-label">Ficha</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" name="ficha">
                  </div>
                </div><!--/form-group--> 
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Nombre</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" name="nombre">
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Tipo Formacion</label>
                  <div class="col-sm-9">
                      <select name="tipoformacion">
                          <option>Seleccione</option>
                          <option>Titulada</option>
                          <option></option>
                          <option></option>
                          <option></option>
                      </select>
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Estado</label>
                  <div class="col-sm-9">
                      <input class="form-control" type="text" name="estado" value="Activo" id="codigoProducto" >
                  </div>
                </div><!--/form-group-->
                
                <div class="bottom">
                  <button type="submit" name="btnAceptar" class="btn btn-success btn-icon"> Aceptar<i class="fa fa-check-square"></i> </button>
                  <button type="button" class="btn btn-default" onclick="window.location.href='listarprogramaformacion.jsp'">Cancelar</button>
                </div>
               <!--/form-group-->
              </form>
            </div><!--/porlets-content-->
          </div>
          
            
           <!--/block-web--> 
        </div><!--/col-md-6-->
       
       
      <!--\\\\\\\ container  end \\\\\\-->
        </div>
      
          
          
<script src="../js/jquery-2.1.0.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/common-script.js"></script>
<script src="../js/jquery.slimscroll.min.js"></script>
<script src="../js/jquery.sparkline.js"></script>
<script src="../js/sparkline-chart.js"></script>
<script src="../js/graph.js"></script>
<script src="../js/edit-graph.js"></script>
<script src="../plugins/kalendar/kalendar.js" type="text/javascript"></script>
<script src="../plugins/kalendar/edit-kalendar.js" type="text/javascript"></script>

<script src="../plugins/sparkline/jquery.sparkline.js" type="text/javascript"></script>
<script src="../plugins/sparkline/jquery.customSelect.min.js" ></script> 
<script src="../plugins/sparkline/sparkline-chart.js"></script> 
<script src="../plugins/sparkline/easy-pie-chart.js"></script>
<script src="../plugins/morris/morris.min.js" type="text/javascript"></script> 
<script src="../plugins/morris/raphael-min.js" type="text/javascript"></script>  
<script src="../plugins/morris/morris-script.js"></script> 





<script src="../plugins/demo-slider/demo-slider.js"></script>
<script src="../plugins/knob/jquery.knob.min.js"></script> 




<script src="../js/jPushMenu.js"></script> 
<script src="../js/side-chats.js"></script>
<script src="../js/jquery.slimscroll.min.js"></script>
<script src="../plugins/scroll/jquery.nanoscroller.js"></script>



</body>
</html>