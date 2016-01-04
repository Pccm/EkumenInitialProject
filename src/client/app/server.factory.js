(function(){
	'use strict';
	angular.module("app")
	.factory("serverService",['$http',serverService]);

		//serverService.$inject = ['$http'];

		function serverService($http){

			var serverService = {
				getDataDevices : getDataDevices
			};

			return serverService;

			function getDataDevices(){
					var promise = $http.get("../server/getDataDevices.php").then(function (response) {
				        return response.data;
				      });
				      return promise;
			};

		}

})();
