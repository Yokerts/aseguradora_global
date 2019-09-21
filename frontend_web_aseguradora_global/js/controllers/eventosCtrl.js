app.controller('EventosCtrl' , function($scope, $state, $http, $uibModal, $log, peticionesHTTP) {
	$scope.title_page = "Eventos";
	$scope.dataTable = [];
	$scope.eventos = [];
	$scope.form = {};

	$scope.request = function (metodo, ruta, datos, id_alumno ) {
		peticionesHTTP.peticion(metodo, ruta, datos).then(function(response) {
			console.log("Controlador", response.data.eventos);
			if (metodo == "GET") {
				$scope.eventos = response.data.eventos;
			} else {
				$scope.form = {};
				$scope.request("GET", "eventos");
			}
		}).catch(function(error) {
			$log.error(error);
		});
	}

	$scope.request("GET", "eventos");

	/*$scope.agregar = function() {

		if ($scope.form.nombre != undefined && $scope.form.apellido_paterno != undefined && $scope.form.apellido_materno != undefined) {

			$scope.request("POST", "polizas", $scope.form);
		} else {
			alert('Hacen falta datos para registrar el doctor');
		}
	}*/

});
