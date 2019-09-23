app.service("peticionesHTTP", function($http, $log, Config, $q) {
	this.peticion = function(metodo, ruta, datos) {

		var defered = $q.defer();
		console.log(metodo, ruta, datos);
		$http({
			method: metodo,
			dataType: 'json',
			headers: {
				'Content-Type': 'application/json'
			},
			url: Config.ruta_api+ruta,
			data: datos || ""
		}).then(function (response, status) {
			console.log("http", response);
			defered.resolve(response);
		}).catch(function (error, status) {
			defered.reject(error);
		});
		return defered.promise;
	} ;
});


