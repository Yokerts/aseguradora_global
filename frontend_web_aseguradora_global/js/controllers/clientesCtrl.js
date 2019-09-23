app.controller('ClientesCtrl' , function($scope, $state, $http, $uibModal, $log, peticionesHTTP) {
	$scope.title_page = "Clientes";
	$scope.dataTable = [];
	$scope.form = {};
	$scope.municipios = [];
	$scope.estados = [];

	/* {
		"nombre" : "Luis",
			"apellido_paterno" : "Masa",
			"apellido_materno" : "Clemente",
			"fecha_nacimiento" : "1980-09-19",
			"codigo_postal" : 29000,
			"direccion" : "Centro",
			"rfc" : "MEAC190980WEDFGH00",
			"id_cat_segmento_mercado" : 0,
			"cat_sexos_id_cat_sexo" : 1,
			"cat_paises_id_cat_pais" : 0,
			"cat_municipios_id_cat_municipio" : 179,
			"cat_estados_id_cat_estado" : 6,
			"id_empresa_aseguradora" : 0
	}*/
	$scope.request = function (metodo, ruta, datos) {
		peticionesHTTP.peticion(metodo, ruta, datos).then(function(response) {
			console.log("Controlador", response.data.clientes_asegurados);
			if (metodo == "GET") {
				$scope.clientes = response.data.clientes_asegurados;
			} else {
				$scope.form = {};
				$scope.request("GET", "clientes_asegurados");
			}
		}).catch(function(error) {
			$log.error(error);
		});
	}

	$scope.request("GET", "clientes_asegurados");

	/*$scope.agregar = function() {

		if ($scope.form.nombre != undefined && $scope.form.apellido_paterno != undefined && $scope.form.apellido_materno != undefined) {
			$scope.request("POST", "clientes_asegurados", $scope.form);
		} else {
			alert('Hacen falta datos para registrar el doctor');
		}
	}*/
});
