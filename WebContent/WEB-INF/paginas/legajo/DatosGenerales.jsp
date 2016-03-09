
<div class="page-content" ng-hide="ctrl.muestraDatos">
	<div class="page-header">
		<h1>Datos Generales del Empleado</h1>
	</div>
	<form name="myForm">
		<input type="hidden" ng-model="ctrl.empleado.idEmployee" />
		<div class="row">

			<div class="col-xs-12">

				<div class="row">
					<div class="col-xs-3">
						<label for="form-field-1"> Apellido Paterno </label>
					</div>
					<div class="col-xs-3">
						<input type="text" id="form-field-1" class="form-control"
							ng-model="ctrl.empleado.firstLastName"
							placeholder="Apellido Paterno" />
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Apellido Materno </label>
					</div>
					<div class="col-xs-3">
						<input type="text" id="form-field-1" class="form-control"
							ng-model="ctrl.empleado.secondLastName"
							placeholder=" Apellido Materno " />
					</div>
				</div>
				<div class="space-4"></div>
				<div class="row">
					<div class="col-xs-3">
						<label for="form-field-1"> Primer Nombre </label>
					</div>
					<div class="col-xs-3">
						<input type="text" id="form-field-1" class="form-control"
							ng-model="ctrl.empleado.firstName" placeholder=" Primer Nombre " />
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Segundo Nombre </label>
					</div>
					<div class="col-xs-3">
						<input type="text" id="form-field-1" class="form-control"
							ng-model="ctrl.empleado.secondName"
							placeholder=" Sefundo Nombre " />
					</div>
				</div>
				<div class="space-4"></div>
				<div class="row">
					<div class="col-xs-3">
						<label for="form-field-1"> Sexo </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1">
							<option value="">&nbsp;</option>
							<option value="M">Masculino</option>
							<option value="F">Femenino</option>
						</select>
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Fecha de Nacimiento </label>
					</div>
					<div class="col-xs-3">
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
					<div class="col-xs-3">
						<label for="form-field-1"> Estado civil </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1">
							<option value="">&nbsp;</option>
							<option value="S">Soltero</option>
							<option value="C">Casado</option>
						</select>
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Fecha de Estado Civil </label>
					</div>
					<div class="col-xs-3">
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
					<div class="col-xs-3">
						<label for="form-field-1"> País de Nacimiento </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1">
							<option value="">&nbsp;</option>
							<option value="PER">Perú</option>
							<option value="BRA">Brasil</option>
						</select>
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Lugar de Nacimiento </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1">
							<option value="">&nbsp;</option>
							<option value="LIM">Lima</option>
							<option value="SP">Sao Paulo</option>
						</select>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="row">
					<div class="col-xs-3">
						<label for="form-field-1"> Nacionalidad </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1">
							<option value="">&nbsp;</option>
							<option value="PER">Peruana</option>
							<option value="BRA">Brasilera</option>
						</select>
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Apellido de Casada </label>
					</div>
					<div class="col-xs-3">
						<input type="text" id="form-field-1" class="form-control"
							placeholder=" Nombres " />
					</div>
				</div>
				<div class="space-4"></div>
				<div class="row">
					<div class="col-xs-3">
						<label for="form-field-1"> Fecha de Fallecimiento </label>
					</div>
					<div class="col-xs-3">
						<div class="input-group">
							<input class="form-control date-picker" id="id-date-picker-1"
								type="text" data-date-format="dd-mm-yyyy" /> <span
								class="input-group-addon"> <i
								class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Fecha de Ingreso al País </label>
					</div>
					<div class="col-xs-3">
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
					<div class="col-xs-3">
						<label for="form-field-1"> Modelo de Documento </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1">
							<option value="">&nbsp;</option>
							<option value="PER">Perú</option>
							<option value="BRA">Brasil</option>
						</select>
					</div>
					<div class="col-xs-3">
						<label for="form-field-1"> Tipo de Documento </label>
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="form-field-select-1"
							ng-model="ctrl.empleado.documentType">
							<option value="">&nbsp;</option>
							<option value="DNI">DNI</option>
							<option value="CE">CE</option>
						</select>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="row">
					<div class="col-xs-3">
						<label for="form-field-1"> Número de Documento de
							Identidad </label>
					</div>
					<div class="col-xs-3">
						<input type="text" id="form-field-1" class="form-control"
							ng-model="ctrl.empleado.numberIdentityDocument"
							placeholder=" Número de Documento de Identidad " />
					</div>

				</div>
				<div class="space-4"></div>
				<div class="row">
					<div align="center">
						<div class="col-xs-6">

							<button class="btn btn-white btn-default btn-round"
								ng-click="ctrl.grabarEmpleado()">
								<i class="ace-icon fa fa-floppy-o bigger-120 blue"></i> Grabar
							</button>

						</div>
						<div class="col-xs-6">
							<button class="btn btn-white btn-default btn-round"
								ng-click="ctrl.mostrarListaEmpleado()">
								<i class="ace-icon fa fa-ban red2"></i> Cancelar
							</button>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="space-4"></div>

		<div class="row">

			<div class="col-xs-12">
				<table id="dynamic-table"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>Código</th>
							<th>Curso</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<tr ng-repeat="cur in ctrl.lstCursos">
							<td><span ng-bind="cur.nCodCur"></span></td>
							<td><span ng-bind="cur.vNomCur"></span></td>
							<td>
								<div class="hidden-sm hidden-xs action-buttons">
									<a class="green" ng-click="ctrl.obtenerCurso(cur.nCodCur)">
										<i class="ace-icon fa fa-pencil bigger-130"></i>
									</a>
								</div>
							</td>
						</tr>

					</tbody>
				</table>
			</div>

		</div>
		<div class="row">
			<div class="col-xs-12">


				<button class="btn btn-white btn-default btn-round"
					ng-click="ctrl.mostrarCurso()">
					<i class="ace-icon fa fa-floppy-o bigger-120 blue"></i> Nuevo Curso
				</button>


			</div>
		</div>



	</form>
</div>

<script type="text/javascript">
	jQuery(function($) {

		$('.date-picker').datepicker({
			autoclose : true
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});

	});
</script>
