'use strict';

App.controller('CursoController', ['$scope', 'CursoService', 
                                  function($scope, CursoService) {
          var self = this;
          self.objCurso={nCodCur:null,vNomCur:''};
          self.lstCursos=[];
              
          self.mostrarListaCurso = function(){
        	  CursoService.mostrarListaCurso()
                  .then(
      					       function(data) {
      						        self.lstCursos = data;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Currencies');
            					}
      			       );
          };
           
               

          self.mostrarListaCurso();


      }]);
