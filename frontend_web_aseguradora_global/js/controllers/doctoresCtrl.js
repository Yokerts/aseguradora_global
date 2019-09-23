app.controller('DoctoresCtrl' , function($scope, $state, $http, $uibModal, $log, peticionesHTTP) {
	$scope.title_page = "Doctores";
	$scope.dataTable = [];
	$scope.form = {};

	$scope.request = function (metodo, ruta, datos) {
		peticionesHTTP.peticion(metodo, ruta, datos).then(function(response) {
			console.log("Controlador", response.data.doctores);
			if (metodo == "GET") {
				$scope.doctores = response.data.doctores;
			} else {
				$scope.form = {};
				$scope.request("GET", "doctores");
			}
		}).catch(function(error) {
			$log.error(error);
		});
	}

	$scope.request("GET", "doctores");

	$scope.agregar = function() {

		if ($scope.form.nombre != undefined && $scope.form.apellido_paterno != undefined && $scope.form.apellido_materno != undefined) {

			if ($scope.form.es_cliente)
				$scope.form.es_cliente = 1;
			$scope.form.es_cliente = 0;

			$scope.request("POST", "doctores", $scope.form);
		} else {
			alert('Hacen falta datos para registrar el doctor');
		}
	}
});

