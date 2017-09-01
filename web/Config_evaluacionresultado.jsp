<%-- 
    Document   : evaluacionresultado
    Created on : 16/08/2017, 02:58:43 PM
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ULTIMO Admin Dashboard Template</title>
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
              
              <h3 class="content-header">CONFIGURAR EVALUACION RESULTADOS</h3>
            </div>
            <div class="porlets-content">
              <form action="" class="form-horizontal row-border">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Codigo Evaluación Resultados</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" disabled="">
                  </div>
                </div><!--/form-group--> 

                <div class="form-group">
                  <label class="col-sm-3 control-label">Código Programa</label>
                  <div class="col-sm-9">
                    <input type="password" class="form-control" disabled="">
                  </div>
                </div><!--/form-group--> 
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Código Competencias</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" disabled="">
                  </div>
                </div><!--/form-group--> 
                
                <div class="bottom">
                  <button type="button" class="btn btn-success btn-icon"> Aceptar<i class="fa fa-check-square"></i> </button>
                  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal" >Cancelar</button>
                </div>
               <!--/form-group-->
              </form>
            </div><!--/porlets-content-->
          </div>
          
            
           <!--/block-web--> 
        </div><!--/col-md-6-->
       
       
      <!--\\\\\\\ container  end \\\\\\-->
        </div>
        
        
        <div class="modal fade" id="myModal" role="dialog" >
    <div class="modal-dialog modal-dialog" >
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">Mensaje de Advertencia <i class="fa fa-exclamation"></i> </h2>
        </div>
        <div class="modal-body center"> 
            <p><h5>¿Estas seguro de que quieres cancelar? 
                <br>
              se perderan los cambios realizados
            </h5>
   
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-success btn-icon" data-dismiss="modal"  onclick="window.location.href='listarevaluacionresultados.jsp'" >Si <i class="fa fa-check-square"></i></button>
            <button type="button" class="btn btn-default" data-dismiss="modal" class="close" >No</button>
        </div>
      </div>
    </div>
  </div>
</div>

        
      
<script src="js/jquery-2.1.0.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/common-script.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/jquery.sparkline.js"></script>
<script src="js/sparkline-chart.js"></script>
<script src="js/graph.js"></script>
<script src="js/edit-graph.js"></script>
<script src="plugins/kalendar/kalendar.js" type="text/javascript"></script>
<script src="plugins/kalendar/edit-kalendar.js" type="text/javascript"></script>

<script src="plugins/sparkline/jquery.sparkline.js" type="text/javascript"></script>
<script src="plugins/sparkline/jquery.customSelect.min.js" ></script> 
<script src="plugins/sparkline/sparkline-chart.js"></script> 
<script src="plugins/sparkline/easy-pie-chart.js"></script>
<script src="plugins/morris/morris.min.js" type="text/javascript"></script> 
<script src="plugins/morris/raphael-min.js" type="text/javascript"></script>  
<script src="plugins/morris/morris-script.js"></script> 





<script src="plugins/demo-slider/demo-slider.js"></script>
<script src="plugins/knob/jquery.knob.min.js"></script> 




<script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="plugins/scroll/jquery.nanoscroller.js"></script>


    </body>
</html>
