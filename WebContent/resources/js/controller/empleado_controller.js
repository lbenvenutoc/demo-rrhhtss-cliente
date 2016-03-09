'use strict';

App.controller('EmpleadoController', [
		'$scope',
		'EmpleadoService',
		'$window',
		'$location',
		function($scope, EmpleadoService, $window, $location) {

			self = this;

			
			self.muestraDatos = true;
			self.muestraBusqueda = false;
			self.muestraDatosCurso = true;

			self.empleado = {
				idEmployee : null,
				firstName : '',
				secondName : '',
				firstLastName : '',
				secondLastName : '',
				idCountry : 1,
				idMedic : 1
			};
			self.empleadoBusqueda = {
				idEmployee : null,
				firstName : '',
				secondName : '',
				firstLastName : '',
				secondLastName : '',
				idCountry : 1,
				idMedic : 1
			};
			self.curso = {
				idEmployee : null,
				nCodCur : null,
				vNomCur : ''
			};

			self.lstEmpleados = [];
			self.lstEmpleadosInsert = [];
			self.lstCursos = [];

			self.mostrarListaEmpleado = function() {

				self.muestraDatos = true;
				self.muestraBusqueda = false;
				self.muestraDatosCurso = true;

				self.empleado = {
					idEmployee : null,
					firstName : '',
					secondName : '',
					firstLastName : '',
					secondLastName : '',
					idCountry : 1,
					idMedic : 1
				};

				EmpleadoService.mostrarListaEmpleado().then(function(data) {
					self.lstEmpleados = data;
				}, function(errResponse) {
					console.error('Error al mostrarListaEmpleado');
				});

				// self.mostrarListaEmpleado();

			};

			self.obtenerEmpleado = function(id) {

				self.muestraDatos = false;
				self.muestraBusqueda = true;
				self.muestraDatosCurso = true;

				console.log('Id de empleado ', id);

				for (var i = 0; i < self.lstEmpleados.length; i++) {
					if (self.lstEmpleados[i].idEmployee == id) {

						self.empleado = angular.copy(self.lstEmpleados[i]);

						break;
					}
				}

				EmpleadoService.obtenerCursoPorEmpleado(id).then(
						function(data) {
							self.lstCursos = data;
						}, function(errResponse) {
							console.error('Error while fetching Currencies');
						});

			};
			self.mostrarEmpleado = function() {

				self.muestraDatos = false;
				self.muestraBusqueda = true;
				self.muestraDatosCurso = true;

				self.lstCursos = [];

			};
			self.buscarEmpleado = function(empleado) {
				
				EmpleadoService.buscarEmpleado(empleado).then(function(data) {
					console.log('Parametros de Busqueda Empleado ', self.empleadoBusqueda);
					self.lstEmpleados = data;
				}, function(errResponse) {
					console.error('Error while fetching Currencies');
				});

			};
			
			self.insertarEmpleado = function(empleado) {
				EmpleadoService.insertarEmpleado(empleado).then(function(data) {

					self.lstEmpleadosInsert = data;

					console.log('Empleado Grabado ', self.lstEmpleadosInsert.idEmployee);
					for (var j = 0; j < self.lstCursos.length; j++) {
						self.lstCursos[j].idEmployee = self.lstEmpleadosInsert.idEmployee;
						console.log('Se insertara curso con codigo de empleado ', self.lstEmpleadosInsert.idEmployee);
						EmpleadoService
								.insertarCursoPorEmpleado(self.lstCursos[j]);
					}


				}, function(errResponse) {
					console.error('Error while fetching Currencies');
				});

			};

			self.actualizarEmpleado = function(empleado) {
				EmpleadoService.actualizarEmpleado(empleado);
				
				for (var i = 0; i < self.lstCursos.length; i++) {
					if (self.lstCursos[i].nCodCur != null) {
						EmpleadoService
								.actualizarCursoPorEmpleado(self.lstCursos[i]);
					}else{
						self.lstCursos[i].idEmployee=empleado.idEmployee;
						EmpleadoService
						.insertarCursoPorEmpleado(self.lstCursos[i]);
					}
				}

			};

			self.grabarEmpleado = function() {

				if (self.empleado.idEmployee == null) {

					self.insertarEmpleado(self.empleado);
				

				} else {
					self.actualizarEmpleado(self.empleado);
					console.log('Empleado actualizado con id ',
							self.empleado.idEmployee);
					
				}
				
				
			};
			self.limpiarBusquedaEmpleado = function() {
				self.empleadoBusqueda = {
					idEmployee : null,
					firstName : '',
					secondName : '',
					firstLastName : '',
					secondLastName : '',
					idCountry : 1,
					idMedic : 1
				};
				self.lstEmpleados = [];

			}, self.obtenerCurso = function(id) {

				self.muestraDatos = true;
				self.muestraBusqueda = true;
				self.muestraDatosCurso = false;

				console.log('Id de curso ', id);

				for (var i = 0; i < self.lstCursos.length; i++) {
					if (self.lstCursos[i].nCodCur == id) {

						self.curso = angular.copy(self.lstCursos[i]);

						break;
					}
				}

			}, self.confirmarActualizacionCurso = function(id) {
				
				
				self.muestraDatos = false;
				self.muestraBusqueda = true;
				self.muestraDatosCurso = true;

				console.log('Id de curso ', id);
				if (id != null) {
					for (var i = 0; i < self.lstCursos.length; i++) {
						if (self.lstCursos[i].nCodCur == id) {
							self.lstCursos[i] = self.curso;
							break;
						}
					}
				} else {
					
					//self.lstCursos = [];
					
					if (self.curso.vNomCur != '') {
						self.lstCursos.push(self.curso);
					}
					
					

				}

			}, self.mostrarCurso = function() {

				self.muestraDatos = true;
				self.muestraBusqueda = true;
				self.muestraDatosCurso = false;

				self.curso = {
					idEmployee : null,
					nCodCur : null,
					vNomCur : ''
				};

			};
		

		} ]);
