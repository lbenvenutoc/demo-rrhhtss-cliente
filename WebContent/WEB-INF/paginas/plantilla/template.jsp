<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en" ng-app="myApp">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="resources/assets/css/bootstrap.css" />
<link rel="stylesheet" href="resources/assets/css/font-awesome.css" />
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" />



<!-- ace settings handler -->
<link rel="stylesheet" href="resources/assets/css/jquery-ui.custom.css" />
<link rel="stylesheet" href="resources/assets/css/chosen.css" />
<link rel="stylesheet"
	href="resources/assets/css/bootstrap-datepicker3.css" />
<link rel="stylesheet"
	href="resources/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="resources/assets/css/daterangepicker.css" />
<link rel="stylesheet"
	href="resources/assets/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" href="resources/assets/css/colorpicker.css" />
<link rel="stylesheet" href="resources/assets/css/ace-fonts.css" />


<!-- text fonts -->
<link rel="stylesheet" href="resources/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet" href="resources/assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />


<script src="resources/assets/js/ace-extra.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<tiles:insertAttribute name="header" />
		</div>

	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<div id="sidebar" class="sidebar responsive">
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
			</script>
			<tiles:insertAttribute name="menu" />
		</div>

		<div class="main-content">
			<div class="main-content-inner">

				<tiles:insertAttribute name="body" />

			</div>
		</div>
		<!-- /.page-content -->
	</div>

	<!-- /.main-content -->

	<div class="footer">
		<div class="footer-inner">
			<!-- #section:basics/footer -->

			<tiles:insertAttribute name="footer" />


			<!-- /section:basics/footer -->
		</div>
	</div>

	<!-- ANGULAR -->
	<script src="resources/js/angular/angular.min.js"></script>
	<script src="resources/js/app.js"></script>
	<script src="resources/js/service/empleado_service.js"></script>
	<script src="resources/js/controller/empleado_controller.js"></script>


	<!-- /.main-container -->

	<!-- basic scripts -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='resources/assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");

		if ("ontouchend" in document)
			document
					.write("<script src='resources/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	
	

	<script src="resources/assets/js/bootstrap.js"></script>
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
	<script src="resources/assets/js/ace-elements.min.js"></script>
	<script src="resources/assets/js/ace.min.js"></script>
	
	<script src="resources/assets/js/dataTables/jquery.dataTables.js"></script>
	<script
		src="resources/assets/js/dataTables/jquery.dataTables.bootstrap.js"></script>
	<script
		src="resources/assets/js/dataTables/extensions/buttons/dataTables.buttons.js"></script>
	<script
		src="resources/assets/js/dataTables/extensions/buttons/buttons.flash.js"></script>
	<script
		src="resources/assets/js/dataTables/extensions/buttons/buttons.html5.js"></script>
	<script
		src="resources/assets/js/dataTables/extensions/buttons/buttons.print.js"></script>
	<script
		src="resources/assets/js/dataTables/extensions/buttons/buttons.colVis.js"></script>
	<script
		src="resources/assets/js/dataTables/extensions/select/dataTables.select.js"></script>


	<script src="resources/assets/js/ace/elements.onpage-help.js"></script>
	<script src="resources/assets/js/ace/ace.onpage-help.js"></script>
	<script src="resources/docs/assets/js/rainbow.js"></script>
	<script src="resources/docs/assets/js/language/generic.js"></script>
	<script src="resources/docs/assets/js/language/html.js"></script>
	<script src="resources/docs/assets/js/language/css.js"></script>
	<script src="resources/docs/assets/js/language/javascript.js"></script>

	<script src="resources/assets/js/ace/elements.scroller.js"></script>
	<script src="resources/assets/js/ace/elements.colorpicker.js"></script>
	<script src="resources/assets/js/ace/elements.fileinput.js"></script>
	<script src="resources/assets/js/ace/elements.typeahead.js"></script>
	<script src="resources/assets/js/ace/elements.wysiwyg.js"></script>
	<script src="resources/assets/js/ace/elements.spinner.js"></script>
	<script src="resources/assets/js/ace/elements.treeview.js"></script>
	<script src="resources/assets/js/ace/elements.wizard.js"></script>
	<script src="resources/assets/js/ace/elements.aside.js"></script>
	<script src="resources/assets/js/ace/ace.js"></script>
	<script src="resources/assets/js/ace/ace.ajax-content.js"></script>
	<script src="resources/assets/js/ace/ace.touch-drag.js"></script>
	<script src="resources/assets/js/ace/ace.sidebar.js"></script>
	<script src="resources/assets/js/ace/ace.sidebar-scroll-1.js"></script>
	<script src="resources/assets/js/ace/ace.submenu-hover.js"></script>
	<script src="resources/assets/js/ace/ace.widget-box.js"></script>
	<script src="resources/assets/js/ace/ace.settings.js"></script>
	<script src="resources/assets/js/ace/ace.settings-rtl.js"></script>
	<script src="resources/assets/js/ace/ace.settings-skin.js"></script>
	<script src="resources/assets/js/ace/ace.widget-on-reload.js"></script>
	<script src="resources/assets/js/ace/ace.searchbox-autocomplete.js"></script>


	






</body>
</html>
