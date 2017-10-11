<%-- 
    Document   : programaformacion
    Created on : 18/08/2017, 03:31:04 PM
    Author     : Estudiante
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
      ProgramaFDaoImpl dao = new ProgramaFDaoImpl();
      List<ProgramaFormacion> listProgf = new ArrayList();
      listProgf = dao.listar();
      
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
              
              <h3 class="content-header">CONFIGURAR PROGRAMA FORMACION</h3>
            </div>
            <div class="porlets-content">
                <%
                ProgramaFormacion progf = (ProgramaFormacion) request.getAttribute("programaf");
                //String id = String.valueOf(prod.getIdCategoria());
                %>
              <form action="programafsvl" method="get" class="form-horizontal row-border">
                  <fieldset disabled>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Codigo Programa</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" name="codprograma" value='<%= progf.getIdProg()%>' />
                  </div>
                </div><!--/form-group--> 
                  </fieldset>
                  <input type="hidden" name="codprograma" readonly="readonly" value='<%= progf.getIdProg()%>' />
                <div class="form-group">
                  <label class="col-sm-3 control-label">Ficha</label>
                  <div class="col-sm-9">
                      <input type="number" class="form-control" name="ficha" value="<%= progf.getSuc_Fich() %>" />
                  </div>
                </div><!--/form-group--> 
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Nombre</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" name="nombre" value="<%= progf.getSuc_nomb() %>" />
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Tipo Formacion</label>
                  <div class="col-sm-9">
                      <select name="tipo formacion">
                          <% 
                          String valor = String.valueOf(progf.getTipoF());
                          for(ProgramaFormacion pf : listProgf){
                             
                         %> <option value="<%= pf.getTipoF()%>" <%
                              
                            if(pf.getTipoF().equals(valor)){
                                

                              %>                          
                              
                              selected
                          
                          <%
                              
                              }
                                     
                              %>> <%= pf.getTipoF()%></option> <%

                          }
                          %>
                      </select>
                  </div>
                </div><!--/form-group-->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Estado</label>
                  <div class="col-sm-9">
                      <select name="estado">
                          <option selected><%= progf.getSuc_Estado()%></option>
                                <%
                                    if(progf.getSuc_Estado().equals("Activo")){
                                        %><option value="Inactivo">Inactivo</option> <%
                                    }else{
                                        %><option value="Activo">Activo</option> <%
                                    }
                                %>
                      </select>
                  </div>
                </div><!--/form-group-->
                
                <div class="bottom">
                  <button type="submit" class="btn btn-success btn-icon" name="btnActualizar" value="Actualizar"> Actualizar<i class="fa fa-check-square"></i> </button>
                  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Cancelar</button>
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
            <button type="button" class="btn btn-success btn-icon" data-dismiss="modal" onclick="window.location.href='listarprogramaformacion.jsp'" >Si <i class="fa fa-check-square"></i></button>
            <button type="button" class="btn btn-default" data-dismiss="modal" class="close"   >No</button>
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
