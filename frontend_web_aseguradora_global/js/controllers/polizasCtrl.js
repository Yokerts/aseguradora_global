app.controller('PolizasCtrl' , function($scope, $state, $http, $uibModal, $log, peticionesHTTP) {
	$scope.title_page = "Polizas";
	$scope.dataTable = [];
	$scope.form = {};

	$scope.request = function (metodo, ruta, datos ) {
		peticionesHTTP.peticion(metodo, ruta, datos).then(function(response) {
			console.log("Controlador", response.data.polizas);
			if (metodo == "GET") {
				$scope.polizas = response.data.polizas;
			} else {
				$scope.form = {};
				$scope.request("GET", "polizas");
			}
		}).catch(function(error) {
			$log.error(error);
		});
	}

	$scope.request("GET", "polizas");

	/*$scope.agregar = function() {

		if ($scope.form.nombre != undefined && $scope.form.apellido_paterno != undefined && $scope.form.apellido_materno != undefined) {

			$scope.request("POST", "polizas", $scope.form);
		} else {
			alert('Hacen falta datos para registrar el doctor');
		}
	}*/
});
