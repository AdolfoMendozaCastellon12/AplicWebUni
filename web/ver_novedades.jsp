<%-- 
    Document   : novedades
    Created on : 16/08/2017, 03:01:02 PM
    Author     : Estudiante
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.AplicWebUniSena.modelo.Novedad"%>
<%@page import="java.util.List"%>
<%@page import="com.AplicWebUniSena.dao.NovedadDaoImpl"%>
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
<%
      NovedadDaoImpl dao = new NovedadDaoImpl();
      List<Novedad> listNoved = new ArrayList();
      listNoved = dao.listar();
      
   %>
    <body style="background-image: url(images/descarga.jpg);">

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
              
              <h3 class="content-header">VER NOVEDADES</h3>
            </div>
            <div class="porlets-content">
                <%
                Novedad novedad = (Novedad) request.getAttribute("noved");
                //String id = String.valueOf(prod.getIdCategoria());
                %>
                <form action="novedadsvl" method="post" class="form-horizontal row-border">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Codigo Novedad</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" disabled="" value='<%= novedad.getIdNoved()%>' >
                  </div>
                </div><!--/form-group--> 

                <div class="form-group">
                  <label class="col-sm-3 control-label">Numeros Matriculados Ordinarios</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getNro_matriOrdi()%>' >
                  </div>
                </div><!--/form-group--> 
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Numero Matriculados Extemporaneos</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getNro_matriExtemp()%>' >
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Retiros Voluntarios Mes</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getRetiVoluntmes()%>' >
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Total Retiros</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getTotalReti()%>' >
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Cancelaciones Mes</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getCancelM()%>' >
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Cancelaciones Ficha</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getCancelFich()%>'>
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Aplazamiento lectivo</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getAplazamLect()%>' >
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Aprendices Registrados</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" placeholder="0" disabled="" value='<%= novedad.getAprendiceReg()%>'>
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Aprendices Formacion</label>
                  <div class="col-sm-9">
                      <input type="" class="form-control" placeholder="0" disabled="" value='<%= novedad.getAprendiceFor()%>' >
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Fecha Registro</label>
                  <div class="col-sm-9">
                      <input type="date" class="form-control" placeholder="0" disabled="" value='<%= novedad.getFechaRegistro()%>' >
                  </div>
                </div><!--/form-group--> 
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Código Informe</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" disabled="" value='<%= novedad.getIdInfor()%>' />
                  </div>
                </div><!--/form-group-->
                
                <div class="bottom">
                  <button type="button" class="btn btn-success btn-icon"onclick="window.location.href='listarnovedades.jsp'"> Atras<i class="fa fa-check-square" ></i> </button>
                  
                </div>
               <!--/form-group-->
              </form>
            </div><!--/porlets-content-->
          </div>
          
            
           <!--/block-web--> 
        </div><!--/col-md-6-->
       
       
      <!--\\\\\\\ container  end \\\\\\-->
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
