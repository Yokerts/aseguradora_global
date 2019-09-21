
var app = angular.module('myApp', ['ui.router', 'ui.bootstrap']);

app.config(function($stateProvider, $urlRouterProvider) {
	$stateProvider.state('empresas', {
		url: '/empresas',
		templateUrl: 'views/empresas.html',
		controller: 'EmpresasCtrl'
	}).state('doctores', {
		url: '/doctores',
		templateUrl: 'views/doctores.html',
		controller: 'DoctoresCtrl'
	}).state('clientes', {
		url: '/clientes',
		templateUrl: 'views/clientes.html',
		controller: 'ClientesCtrl'
	}).state('polizas', {
		url: '/polizas',
		templateUrl: 'views/polizas.html',
		controller: 'PolizasCtrl'
	}).state('eventos', {
		url: '/eventos',
		templateUrl: 'views/eventos.html',
		controller: 'EventosCtrl'
	});

	$urlRouterProvider.otherwise('/empresas');
});