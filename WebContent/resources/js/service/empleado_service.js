'use strict';

App
		.factory(
				'EmpleadoService',
				[
						'$http',
						'$q',
						function($http, $q) {

							return {

								empleadoService : {
									idEmployee : null,
									firstName : '',
									secondName : '',
									firstLastName : '',
									secondLastName : '',
									idCountry : 1,
									idMedic : 1
								},

								mostrarListaEmpleado : function() {
									return $http
											.get(
													'http://localhost:8040/RhTssWS/cursows/listarEmpleado',{ cache: true})
											.then(
													function(response) {
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while fetching users');
														return $q
																.reject(errResponse);
													});
								},
								buscarEmpleado : function(empleado) {
									return $http
											.post(
													'http://localhost:8040/RhTssWS/cursows/buscarEmpleado/',empleado)
											.then(
													function(response) {
														
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while fetching users');
														return $q
																.reject(errResponse);
													});
								},
								obtenerEmpleado : function(id) {
									return $http
											.get(
													'http://localhost:8040/RhTssWS/cursows/obtenerEmpleado/'
															+ id)
											.then(
													function(response) {
														console.log('url ',
																'http://localhost:8040/RhTssWS/cursows/obtenerEmpleado/'
																		+ id);
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while fetching users');
														return $q
																.reject(errResponse);
													});
								},
								insertarEmpleado : function(empleado) {
									return $http
											.post(
													'http://localhost:8040/RhTssWS/cursows/insertarEmpleado/',
													empleado)
											.then(
													function(response) {
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while creating user');
														return $q
																.reject(errResponse);
													});
								},

								actualizarEmpleado : function(empleado) {
									return $http
											.put(
													'http://localhost:8040/RhTssWS/cursows/actualizarEmpleado/',
													empleado)
											.then(
													function(response) {
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while updating user');
														return $q
																.reject(errResponse);
													});
								},
								
								obtenerCursoPorEmpleado : function(id) {
									return $http
											.get(
													'http://localhost:8040/RhTssWS/cursows/obtenerCursoPorEmpleado/'+id)
											.then(
													function(response) {
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while updating user');
														return $q
																.reject(errResponse);
													});
								},
								actualizarCursoPorEmpleado : function(curso) {
									return $http
											.put(
													'http://localhost:8040/RhTssWS/cursows/actualizarCursoPorEmpleado/',
													curso)
											.then(
													function(response) {
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while updating user');
														return $q
																.reject(errResponse);
													});
								},
								insertarCursoPorEmpleado : function(curso) {
									return $http
											.post(
													'http://localhost:8040/RhTssWS/cursows/insertarCursoPorEmpleado/',
													curso)
											.then(
													function(response) {
														return response.data;
													},
													function(errResponse) {
														console
																.error('Error while updating user');
														return $q
																.reject(errResponse);
													});
								}
							};

						} ]);
