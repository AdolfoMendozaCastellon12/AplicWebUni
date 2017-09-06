<%-- 
    Document   : informe
    Created on : 16/08/2017, 03:11:59 PM
    Author     : Estudiante
--%>

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
    <body style="background-color: #f1f1f1;">

  <!--\\\\\\\ wrapper Start \\\\\\-->

  <!--\\\\\\\ header end \\\\\\-->
  
    <!--\\\\\\\ inner start \\\\\\-->
    <!--\\\\\\\left_nav end \\\\\\-->
   
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
        
  
      </div>
      <div class="container clear_both padding_fix">
          <div class="col-md-2
               "></div>
        <!--/col-md-6-->
       <div class="col-md-8">
       
          <div class="block-web">
            <div class="header">
              <div class="actions"> <a class="minimize" href="#"><i class="fa fa-chevron-down"></i></a><a class="close-down" href="#"><i class="fa fa-times"></i></a> </div>
              <h3 class="content-header">INFORME</h3>
            </div>
            <div class="porlets-content">
              <div class="basic-wizard" id="progressWizard">
                <ul class="nav nav-pills nav-justified">
                  <li class="active"><a data-toggle="tab" href="#ptab1"><span> Avance:  </span>Parte 1 </a></li>
                  <li><a data-toggle="tab" href="#ptab2"><span>Avance:</span> Parte 2</a></li>
                  <li><a data-toggle="tab" href="#ptab3"><span>Step 3:</span> Payment</a></li>
                  <li><a data-toggle="tab" href="#ptab4"><span>Step 4:</span> Payment</a></li>
                </ul>
                <div class="tab-content">
                    
                  <div class="progress progress-striped">
                    <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar" style="width: 33.3333%;"></div>
                  </div>
                  <div id="ptab1" class="tab-pane active">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Nro.de Ficha </label>
                        <div class="col-sm-8">
                          <input type="number" class="form-control" name="firstname" placeholder="0">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">Actividades desarrolladas en el mes </label>
                        <div class="col-sm-8">
                          <input type="number" class="form-control" name="lastname" placeholder="0">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">Población impactada  </label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="firstname">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="col-sm-4">Estrategia empleada</label>
                        <div class="col-sm-8"> 
                        <textarea class="form-control"></textarea>
                        </div>
                        </div>
                        
                         <div class="form-group">
                        <label class="col-sm-4">Lugar de ejecución</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="firstname">
                        </div>
                        
                        

                        
                      </div>
                        
                    </form>
                      <div class="col-lg-12">
            <a class="list-group-item active" >
                <h4 class="list-group-item-heading">Objeto.</h4>
                <p class="list-group-item-text">Prestar los servicios profesionales personales de carácter temporal, como instructor para impartir formación profesional integral en la modalidad de formación titulada y/o complementaria, así como brindar apoyo cuando se requiera , en la actualización y/o elaboración de diseños curriculares, asesoría en formulación de planes de negocio, en el montaje de unidades productivas, seguimiento a las empresas creadas, en ejercicios de investigación aplicada y en las demás actividades requeridas por la entidad, para dar cumplimiento al convenio de ampliación de cobertura en el marco de la formación por competencias y el aprendizaje por proyectos.</p>
              </a>
                  </div>
                      <div class="col-md-12">
          <div class="block-web">
            <div class="header">
              
              <h3 class="content-header">AVANCES</h3>
            </div>
         <div class="porlets-content">
         
         <div class="table-responsive">
                <div id="hidden-table-info_wrapper" class="dataTables_wrapper form-inline" role="grid"</div></div><div class="col-md-6"><div class="dataTables_filter" id="hidden-table-info_filter">
                       <div class="form-group search_group  ">
                                <input type="text" class="form-control" placeholder="Buscar...">                 
                                <span class=""><button class="btn btn-primary btn_space" type="button"><i class="fa fa-search"></i> </button></span>
                          </div>
                      
                    </div>
                </div>
         </div>
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered dataTable" id="hidden-table-info" aria-describedby="hidden-table-info_info">
                  <thead>
                    <tr role="row"><th class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="" style="width: 7px;"></th>
                        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 148px;">No. de Ficha</th>
                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 205px;">Actividades desarrolladas en el mes</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 184px;">Fecha de ejecución </th>
                        <th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 125px;">Población impactada</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 87px;">Estrategia empleada</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 125px;">Lugar de ejecución </th></tr>
                  </thead>
                  
                <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="gradeA odd"><td class="center "><img src="plugins/advanced-datatable/images/details_open.png"></td>
                      <td class="  sorting_1"></td>
                      <td class=" "></td>
                      <td class="hidden-phone "></td>
                      <td class="center hidden-phone ">-</td>
                      <td class="center hidden-phone ">A</td>
                       <td class="center hidden-phone ">A</td>
                    
                      
                    </tr></tbody></table><div class="row"><div class="col-md-6">
                            </div><div class="col-md-6">
                                    <div class="dataTables_paginate paging_bootstrap pagination">
                                        <ul></ul></div></div></div></div>
              </div><!--/table-responsive-->
         <ul class="pager wizard">
                  <li class="previous disabled"><a href="javascript:void(0)">Anterior</a></li>
                  <li class="next"><a data-toggle="tab" href="#ptab2">Siguiente</a></li>
                </ul>
           </div><!--/porlets-content-->  
          </div><!--/block-web--> 
        
         
                  
                  <div id="ptab2" class="tab-pane">
             
                      
                      <div>  
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Programa</label>
                        <div class="col-sm-5">
                          <input type="text" class="form-control" name="product_id">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">Código de ficha</label>
                        <div class="col-sm-5">
                          <input type="text" class="form-control" name="product_name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">Category</label>
                        <div class="col-sm-4">
                          <select class="form-control">
                            <option value="">Choose One</option>
                            <option value="">3D Animation</option>
                            <option value="">Web Design</option>
                            <option value="">Software Engineering</option>
                          </select>
                        </div>
                      </div>
                    </form>
                          <div class="col-lg-12">
            <a class="list-group-item active" >
                <h4 class="list-group-item-heading">Avance de la formación</h4>
                <p class="list-group-item-text">Avance consolidado por programa de formación del convenio de acuerdo a la ejecución de las competencias de la fase lectiva</p>
              </a>
                  </div>
                       <div class="col-md-12">
          <div class="block-web">
            <div class="header">
              
              <h3 class="content-header">AVANCES</h3>
            </div>
         <div class="porlets-content">
         
         <div class="table-responsive">
                <div id="hidden-table-info_wrapper" class="dataTables_wrapper form-inline" role="grid"</div></div><div class="col-md-6"><div class="dataTables_filter" id="hidden-table-info_filter">
                       <div class="form-group search_group  ">
                                <input type="text" class="form-control" placeholder="Buscar...">                 
                                <span class=""><button class="btn btn-primary btn_space" type="button"><i class="fa fa-search"></i> </button></span>
                          </div>
                      
                    </div>
                </div>
         </div>
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered dataTable" id="hidden-table-info" aria-describedby="hidden-table-info_info">
                  <thead>
                    <tr role="row"><th class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="" style="width: 7px;"></th>
                        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 148px;">No. de Ficha</th>
                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 205px;">Actividades desarrolladas en el mes</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 184px;">Fecha de ejecución </th>
                        <th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 125px;">Población impactada</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 87px;">Estrategia empleada</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="hidden-table-info" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 125px;">Lugar de ejecución </th></tr>
                  </thead>
                  
                <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="gradeA odd"><td class="center "><img src="plugins/advanced-datatable/images/details_open.png"></td>
                      <td class="  sorting_1"></td>
                      <td class=" "></td>
                      <td class="hidden-phone "></td>
                      <td class="center hidden-phone ">-</td>
                      <td class="center hidden-phone ">A</td>
                       <td class="center hidden-phone ">A</td>
                    
                      
                    </tr></tbody></table><div class="row"><div class="col-md-6">
                            </div><div class="col-md-6">
                                    <div class="dataTables_paginate paging_bootstrap pagination">
                                        <ul></ul></div></div></div></div>
              </div>   
                  </div>
                      
                      
                      
                  </div>
          </div>
                  <div id="ptab3" class="tab-pane">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Card No</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="cardno">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">Expiration</label>
                        <div class="col-sm-4">
                          <select class="form-control">
                            <option value="">Month</option>
                            <option value="">January</option>
                            <option value="">February</option>
                            <option value="">March</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        <div class="col-sm-4">
                          <select class="form-control">
                            <option value="">Year</option>
                            <option value="">2013</option>
                            <option value="">2014</option>
                            <option value="">2015</option>
                            <option value="">...</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">CSV</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" name="csv">
                        </div>
                      </div>
                        
                    </form>
                      
                     
                  </div>
                    <div id="ptab4" class="tab-pane">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Card No</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="cardno">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">Expiration</label>
                        <div class="col-sm-4">
                          <select class="form-control">
                            <option value="">Month</option>
                            <option value="">January</option>
                            <option value="">February</option>
                            <option value="">March</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        <div class="col-sm-4">
                          <select class="form-control">
                            <option value="">Year</option>
                            <option value="">2013</option>
                            <option value="">2014</option>
                            <option value="">2015</option>
                            <option value="">...</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4">CSV</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" name="csv">
                        </div>
                      </div>
                        
                    </form>
                        
                     
                    </div>

                        
                    <div class="col-md-2"></div>
                    
                </div><!-- /tab-content -->
             
              
              
                
              </div><!--/progressWizard-->
            </div><!--/porlets-content--> 
          </div><!--/block-web--> 
        </div>
           
           <!--/col-md-6--> 
      </div>
       
      <!--\\\\\\\ container  end \\\\\\-->
       
      
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
