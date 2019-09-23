app.controller('TransaccionesCtrl' , function($scope, $state, $http, $uibModal, $log, peticionesHTTP) {
    $scope.title_page = "Transacciones";
    $scope.dataTable = [];
    $scope.form1 = {cant_clientes_mas_polizas: 10};
    $scope.form2 = {cant_especialidades_mas_generadas: 5};
    $scope.especialidades=[];

    $scope.request = function (metodo, ruta, datos, tipo ) {
        peticionesHTTP.peticion(metodo, ruta, datos).then(function(response) {
            console.log("Controlador", response.data.data);
            if (tipo) {
                $scope.especialidades = response.data.data;
            } else {
                $scope.clientes = response.data.data;

                console.log(JSON.stringify($scope.especialidades));
            }
        }).catch(function(error) {
            $log.error(error);
        });
    }

    $scope.request("POST", "transacciones" ,$scope.form1,0);
    $scope.request("POST", "transacciones" ,$scope.form2,1);

});
