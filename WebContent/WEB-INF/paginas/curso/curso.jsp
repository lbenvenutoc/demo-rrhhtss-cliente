
<div class="page-content" ng-hide="ctrl.muestraDatosCurso">
	<div class="page-header">
		<h1>Curso</h1>
	</div>
	<form name="myForm">
		<input type="hidden" ng-model="ctrl.curso.idEmployee" />
		<div class="row">

			<div class="col-xs-12">

				<div class="row">
					<div class="col-xs-6">
						<label for="form-field-1"> Nombre de Curso </label>
					</div>
					<div class="col-xs-6">
						<input type="text" id="form-field-1" class="form-control"
							ng-model="ctrl.curso.vNomCur"
							placeholder="Nombre de Curso" />
					</div>

				</div>

				<div class="space-4"></div>
				<div class="row">
					<div align="center">
						<div class="col-xs-6">

							<button class="btn btn-white btn-default btn-round"
									ng-click="ctrl.confirmarActualizacionCurso(ctrl.curso.nCodCur)">
								<i class="ace-icon glyphicon glyphicon-ok bigger-120 blue"></i> Aceptar
							</button>

						</div>
						<div class="col-xs-6">
							<button class="btn btn-white btn-default btn-round" 
							ng-click="ctrl.obtenerEmpleado(ctrl.curso.idEmployee)"
								>
								<i class="ace-icon fa fa-ban red2"></i> Cancelar
							</button>
						</div>
					</div>
				</div>

			</div>
		</div>


	</form>
</div>

