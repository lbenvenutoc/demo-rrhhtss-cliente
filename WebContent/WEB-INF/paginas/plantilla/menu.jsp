<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<ul class="nav nav-list">

	<spring:url value="mostrarBusquedaEmpleado"
		var="mostrarBusquedaEmpleadoUrl" />
	<li class=""><a
		onclick="location.href='${mostrarBusquedaEmpleadoUrl}'"> <i
			class="ace-icon fa fa-users bigger-120"></i><span class="menu-text">
				Empleados </span>
	</a> <b class="arrow"></b></li>
</ul>


<!-- #section:basics/sidebar.layout.minimize -->
<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
	<i class="ace-icon fa fa-angle-double-left"
		data-icon1="ace-icon fa fa-angle-double-left"
		data-icon2="ace-icon fa fa-angle-double-right"></i>
</div>

<script type="text/javascript">
	try {
		ace.settings.check('sidebar', 'collapsed')
	} catch (e) {
	}
</script>


