
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="template">

	<tiles:putAttribute name="body">

		<div class="tabbable"  ng-controller="EmpleadoController as ctrl">
			<ul class="nav nav-tabs padding-12 tab-color-blue background-blue"
				id="myTab4">
				<li class="active"><a data-toggle="tab" href="#datosGenerales">Datos
						Generales</a></li>
				<li><a data-toggle="tab" href="#complemento">Complemento</a></li>

				<li><a data-toggle="tab" href="#organizacion">Organizacion</a></li>
				<li><a data-toggle="tab" href="#domicilio">Domicilio</a></li>
				<li><a data-toggle="tab" href="#idiomas">Idiomas</a></li>
				<li><a data-toggle="tab" href="#documentos">Documentos</a></li>
			</ul>

			<div class="tab-content">
				<div id="datosGenerales" class="tab-pane in active">
					<jsp:include page="/WEB-INF/paginas/legajo/DatosGenerales.jsp"></jsp:include>
				</div>

				<div id="complemento" class="tab-pane">
					<jsp:include page="/WEB-INF/paginas/legajo/Complemento.jsp"></jsp:include>
				</div>

				<div id="organizacion" class="tab-pane">
					<jsp:include page="/WEB-INF/paginas/legajo/Organizacion.jsp"></jsp:include>
				</div>

				<div id="domicilio" class="tab-pane">
					<jsp:include page="/WEB-INF/paginas/legajo/Domicilio.jsp"></jsp:include>
				</div>

				<div id="idiomas" class="tab-pane">
					<jsp:include page="/WEB-INF/paginas/legajo/Idiomas.jsp"></jsp:include>
				</div>

				<div id="documentos" class="tab-pane">
					<jsp:include page="/WEB-INF/paginas/legajo/Documentos.jsp"></jsp:include>
				</div>
			</div>
		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>