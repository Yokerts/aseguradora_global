app.controller('EmpresasCtrl' , function($scope, $state, $http, $uibModal, $log, peticionesHTTP) {
    $scope.title_page = "Empresas";
    $scope.dataTable = [];
    $scope.form = {};

    $scope.request = function (metodo, ruta, datos) {
        peticionesHTTP.peticion(metodo, ruta, datos).then(function(response) {
            console.log("Controlador", response.data.empresas_aseguradoras);
            if (metodo == "GET") {
                $scope.empresas = response.data.empresas_aseguradoras;
            } else {
                $scope.form.empresa_aseguradora = "";
                $scope.request("GET", "empresas_aseguradoras");
            }
        }).catch(function(error) {
            $log.error(error);
        });
    }

    $scope.request("GET", "empresas_aseguradoras");

    $scope.agregar = function() {

        if ($scope.form.empresa_aseguradora != undefined) {
            $scope.request("POST", "empresas_aseguradoras", $scope.form);
        } else {
            alert('No has ingresado la empresa');
        }
    }
});

