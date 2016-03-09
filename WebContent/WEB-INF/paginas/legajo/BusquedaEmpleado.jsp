<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<tiles:insertDefinition name="template">

	<tiles:putAttribute name="body">
		<div class="page-content" ng-controller="EmpleadoController as ctrl">
			<div class="page-content" ng-hide="ctrl.muestraBusqueda">
				<div class="page-header">
					<h1>Búsqueda de Empleados</h1>
				</div>
				<div class="row">



					<div class="col-xs-12">


						<div class="row">

							<div class="col-xs-2">
								<label for="form-field-1"> Empleado </label>
							</div>
							<div class="col-xs-2">
								<button ng-click="ctrl.mostrarEmpleado()"
									class="btn btn-white btn-info btn-bold">
									<i class="ace-icon fa fa-users bigger-120 blue"></i> Nuevo
								</button>
							</div>
							<div class="col-xs-2">
								<button class="btn btn-white btn-default btn-round">
									<i class="ace-icon fa fa-ban red2"></i> Cerrar
								</button>
							</div>
							<div class="col-xs-6"></div>

						</div>
						<form name="frmBuscarEmpleado">

							<div class="space-4"></div>

							<div class="row">

								<div class="col-xs-3">
									<input type="text" id="form-field-1" class="form-control"
										ng-model="ctrl.empleadoBusqueda.firstLastName"
										placeholder="Apellido Paterno" />
								</div>
								<div class="col-xs-3">
									<input type="text" id="form-field-1" class="form-control"
										ng-model="ctrl.empleadoBusqueda.secondLastName"
										placeholder="Apellido Materno" />
								</div>
								<div class="col-xs-3">
									<input type="text" id="form-field-1" class="form-control"
										ng-model="ctrl.empleadoBusqueda.firstName"
										placeholder="Primer Nombre" />
								</div>
								<div class="col-xs-3">
									<input type="text" id="form-field-1" class="form-control"
										ng-model="ctrl.empleadoBusqueda.secondName"
										placeholder="Segundo Nombre" />
								</div>


							</div>
							<div class="space-4"></div>
							<div class="row">

								<div class="col-xs-4">
									<label for="form-field-1"> Empleado desde </label>
								</div>
								<div class="col-xs-4">
									<div class="input-group">
										<input class="form-control date-picker" id="id-date-picker-1"
											type="text" data-date-format="dd-mm-yyyy" /> <span
											class="input-group-addon"> <i
											class="icon-calendar bigger-110"></i>
										</span>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="input-group">
										<input class="form-control date-picker" id="id-date-picker-1"
											type="text" data-date-format="dd-mm-yyyy" /> <span
											class="input-group-addon"> <i
											class="icon-calendar bigger-110"></i>
										</span>
									</div>
								</div>

							</div>
							<div class="space-4"></div>
							<div class="row">

								<div class="col-xs-2">
									<label for="form-field-1"> Estado </label>
								</div>
								<div class="col-xs-2">
									<select class="form-control" id="form-field-select-1">
										<option value="">&nbsp;</option>
										<option value="PER">Activo</option>
										<option value="BRA">Inactivo</option>
									</select>
								</div>
								<div class="col-xs-4">
									<input type="text" id="form-field-1" class="form-control"
										placeholder="Código de Empleado" />
								</div>
								<div class="col-xs-2">
									<button class="btn btn-white btn-info btn-bold"
										ng-click="ctrl.buscarEmpleado(ctrl.empleadoBusqueda)">
										<i class="ace-icon fa fa-search bigger-120 green"></i> Buscar
									</button>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-white btn-info btn-bold"
									ng-click="ctrl.limpiarBusquedaEmpleado()">
										<i class="ace-icon fa fa-paint-brush bigger-120 orange"></i>
										Limpiar
									</button>
								</div>
							</div>


						</form>
						<div class="space-4"></div>
						<div class="row">

							<div class="col-xs-12">

								<div class="clearfix">
									<div class="pull-right tableTools-container"></div>
								</div>
								<div class="table-header">Resultados</div>

								<table id="dynamic-table"
									class="table table-striped table-bordered table-hover" >
									<thead>
										<tr>
											<th>Código</th>											
											<th>Empleado</th>
											<th>Tipo de Documento de Identidad</th>
											<th>Número de Documento</th>
											<th></th>
										</tr>
									</thead>

									<tbody>
										
										<tr ng-repeat="emp in ctrl.lstEmpleados">
											<td><span ng-bind="emp.idEmployee"></span></td>
											<td><span ng-bind="emp.firstName"></span> <span>
											</span> <span ng-bind="emp.secondName"></span> <span> </span> <span
												ng-bind="emp.firstLastName"></span> <span> </span> <span
												ng-bind="emp.secondLastName"></span></td>
											<td><span ng-bind="emp.documentType"></span></td>
											<td><span ng-bind="emp.numberIdentityDocument"></span></td>
											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="green"
														ng-click="ctrl.obtenerEmpleado(emp.idEmployee)"> <i
														class="ace-icon fa fa-pencil bigger-130"></i>
													</a>
												</div>
											</td>
										</tr>

									</tbody>
								</table>


							</div>

						</div>


					</div>



				</div>



			</div>
			<jsp:include page="/WEB-INF/paginas/legajo/DatosGenerales.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/paginas/curso/curso.jsp"></jsp:include>
		</div>


		<script type="text/javascript">
			jQuery(function($) {

				$('.date-picker').datepicker({
					autoclose : true
				}).next().on(ace.click_event, function() {
					$(this).prev().focus();
				});

				//initiate dataTables plugin
				var myTable = $('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable({
					bAutoWidth : false,
					"aoColumns" : [ {
						"bSortable" : false
					}, null, null, null, {
						"bSortable" : false
					} ],
					"aaSorting" : [],

					//"bProcessing": true,
					//"bServerSide": true,
					//"sServerMethod": "GET",
					//"sAjaxSource": "http://127.0.0.1/table.php",
					//"sAjaxSource": "http://localhost:8043/RhTssWS/cursows/listarEmpleado/",

					//,
					//"sScrollY": "200px",
					//"bPaginate": false,

					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element

					//"iDisplayLength": 50

					select : {
						style : 'multi'
					}
				});

				new $.fn.dataTable.Buttons(
						myTable,
						{
							buttons : [
									{
										"extend" : "colvis",
										"text" : "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Mostrar/Ocultar columnas</span>",
										"className" : "btn btn-white btn-primary btn-bold",
										columns : ':not(:first):not(:last)'
									},
									{
										"extend" : "copy",
										"text" : "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copiar al portapapeles</span>",
										"className" : "btn btn-white btn-primary btn-bold"
									},
									{
										"extend" : "csv",
										"text" : "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Exportar a CSV</span>",
										"className" : "btn btn-white btn-primary btn-bold"
									},
									{
										"extend" : "excel",
										"text" : "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Exportar a Excel</span>",
										"className" : "btn btn-white btn-primary btn-bold"
									},
									{
										"extend" : "pdf",
										"text" : "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Exportar a PDF</span>",
										"className" : "btn btn-white btn-primary btn-bold"
									},
									{
										"extend" : "print",
										"text" : "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Imprimir</span>",
										"className" : "btn btn-white btn-primary btn-bold",
										autoPrint : false,
										message : 'This print was produced using the Print button for DataTables'
									} ]
						});
				myTable.buttons().container().appendTo(
						$('.tableTools-container'));

				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable
						.button(1)
						.action(
								function(e, dt, button, config) {
									defaultCopyAction(e, dt, button, config);
									$('.dt-button-info')
											.addClass(
													'gritter-item-wrapper gritter-info gritter-center white');
								});

				var defaultColvisAction = myTable.button(0).action();
				myTable
						.button(0)
						.action(
								function(e, dt, button, config) {

									defaultColvisAction(e, dt, button, config);

									if ($('.dt-button-collection > .dropdown-menu').length == 0) {
										$('.dt-button-collection')
												.wrapInner(
														'<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
												.find('a').attr('href', '#')
												.wrap("<li />")
									}
									$('.dt-button-collection')
											.appendTo(
													'.tableTools-container .dt-buttons')
								});

				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(
							function() {
								var div = $(this).find(' > div').first();
								if (div.length == 1)
									div.tooltip({
										container : 'body',
										title : div.parent().text()
									});
								else
									$(this).tooltip({
										container : 'body',
										title : $(this).text()
									});
							});
				}, 500);

				$(document).on('click', '#dynamic-table .dropdown-toggle',
						function(e) {
							e.stopImmediatePropagation();
							e.stopPropagation();
							e.preventDefault();
						});

			})
		</script>
	</tiles:putAttribute>

</tiles:insertDefinition>