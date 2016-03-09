'use strict';

App.factory('CursoService', ['$http', '$q', function($http, $q){

	return {
		
			mostrarListaCurso: function() {
					return $http.get('http://localhost:8040/DemoCursosWS/cursows/listarCurso')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching users');
										return $q.reject(errResponse);
									}
							);
			}
		
	};

}]);
