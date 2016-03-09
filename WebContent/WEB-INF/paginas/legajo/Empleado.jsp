<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<!-- basic styles -->

<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="resources/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<link rel="stylesheet"
	href="resources/assets/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="resources/assets/css/chosen.css" />
<link rel="stylesheet" href="resources/assets/css/datepicker.css" />
<link rel="stylesheet"
	href="resources/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="resources/assets/css/daterangepicker.css" />
<link rel="stylesheet" href="resources/assets/css/colorpicker.css" />

<!-- fonts -->

<link rel="stylesheet" href="resources/assets/css/ace-fonts.css" />

<!-- ace styles -->

<link rel="stylesheet" href="resources/assets/css/ace.min.css" />
<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="resources/assets/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="resources/assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="resources/assets/js/ace-extra.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-xs-12">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> Apellido Paterno </label>

					<div class="col-sm-9">
						<input type="text" id="form-field-1"
							placeholder="Apellido Paterno" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> Apellido Materno </label>

					<div class="col-sm-9">
						<input type="text" id="form-field-1"
							placeholder="Apellido Materno " class="col-xs-10 col-sm-5" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> Nombre </label>

					<div class="col-sm-9">
						<input type="text" id="form-field-1" placeholder="Nombre"
							class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label bolder blue">Sexo</label>

					<div class="radio">
						<label> <input name="form-field-radio" type="radio" 
							class="ace" /> <span class="lbl"> Masculino </span>
						</label>
					</div>

					<div class="radio">
						<label> <input name="form-field-radio" type="radio"
							class="ace" /> <span class="lbl"> Femenino </span>
						</label>
					</div>
				</div>
				<div class="widget-body">
					<div class="widget-main">
						<label for="id-date-picker-1">Fecha de Nacimiento</label>



						<div class="input-group">
							<input size="10" class="form-control date-picker"
								id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" />
							<span class="input-group-addon"> <i
								class="icon-calendar bigger-110"></i>
							</span>
						</div>


					</div>
				</div>

				<div>
					<label for="form-field-select-1">Estado Civil</label> <select
						class="form-control" id="form-field-select-1">
						<option value="">&nbsp;</option>
						<option value="S">Soltero</option>
						<option value="C">Casado</option>
					</select>
				</div>

				<label for="id-date-picker-1">Feha de Estado Civil</label>

				<div class="row">
					<div class="col-xs-8 col-sm-11">
						<div class="input-group">
							<input class="form-control date-picker" id="id-date-picker-1"
								type="text" data-date-format="dd-mm-yyyy" /> <span
								class="input-group-addon"> <i
								class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
				</div>

				<div>
					<label for="form-field-select-1">Pais Nacimiento</label> <select
						class="form-control" id="form-field-select-1">
						<option value="">&nbsp;</option>
						<option value="P">Perú</option>
						<option value="B">Brasil</option>
					</select>
				</div>
				<div>
					<label for="form-field-select-1">Lugar Nacimiento</label> <select
						class="form-control" id="form-field-select-1">
						<option value="">&nbsp;</option>
						<option value="P">Lima</option>
						<option value="B">Sao Paulo</option>
					</select>
				</div>
				<div>
					<label for="form-field-select-1">Nacionalidad</label> <select
						class="form-control" id="form-field-select-1">
						<option value="">&nbsp;</option>
						<option value="P">Peruana</option>
						<option value="B">Brasilera</option>
					</select>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> Apellido de casada </label>

					<div class="col-sm-9">
						<input type="text" id="form-field-1"
							placeholder="Apellido de casada" class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<label for="id-date-picker-1">Feha de Fallecimiento</label>

				<div class="row">
					<div class="col-xs-8 col-sm-11">
						<div class="input-group">
							<input class="form-control date-picker" id="id-date-picker-1"
								type="text" data-date-format="dd-mm-yyyy" /> <span
								class="input-group-addon"> <i
								class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
				</div>
				<label for="id-date-picker-1">Feha de Ingreso al país</label>

				<div class="row">
					<div class="col-xs-8 col-sm-11">
						<div class="input-group">
							<input class="form-control date-picker" id="id-date-picker-1"
								type="text" data-date-format="dd-mm-yyyy" /> <span
								class="input-group-addon"> <i
								class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
				</div>

				<div>
					<label for="form-field-select-1">Modelo de Documento</label> <select
						class="form-control" id="form-field-select-1">
						<option value="">&nbsp;</option>
						<option value="P">Perú</option>
						<option value="B">Brasil</option>
					</select>
				</div>

				<div class="form-group">
					<label class="control-label bolder blue">Documento</label>

					<div class="radio">
						<label> <input name="form-field-radio" type="radio"
							class="ace" /> <span class="lbl"> DNI </span>
						</label>
					</div>

					<div class="radio">
						<label> <input name="form-field-radio" type="radio"
							class="ace" /> <span class="lbl"> LE </span>
						</label>
					</div>

					<div class="radio">
						<label> <input name="form-field-radio" type="radio"
							class="ace" /> <span class="lbl"> LC </span>
						</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> Nro. de Documento </label>

					<div class="col-sm-9">
						<input type="text" id="form-field-1"
							placeholder="Nro. de Documento" class="col-xs-10 col-sm-5" />
					</div>
				</div>

			</form>
		</div>
	</div>

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='resources/assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='resources/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/typeahead-bs2.min.js"></script>
	<script src="resources/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="resources/assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="resources/assets/js/chosen.jquery.min.js"></script>
	<script src="resources/assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="resources/assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="resources/assets/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="resources/assets/js/date-time/moment.min.js"></script>
	<script src="resources/assets/js/date-time/daterangepicker.min.js"></script>
	<script src="resources/assets/js/bootstrap-colorpicker.min.js"></script>
	<script src="resources/assets/js/jquery.knob.min.js"></script>
	<script src="resources/assets/js/jquery.autosize.min.js"></script>
	<script src="resources/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="resources/assets/js/jquery.maskedinput.min.js"></script>
	<script src="resources/assets/js/bootstrap-tag.min.js"></script>

	<!-- ace scripts -->

	<script src="resources/assets/js/ace-elements.min.js"></script>
	<script src="resources/assets/js/ace.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {

			$('.date-picker').datepicker({
				autoclose : true
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

		});
	</script>
</body>
</html>