(function(){
	'use strict';

	angular.module("app")
	.controller("controlController",['googlemapService','plotService','serverService',controlController]);

		function controlController(googlemapService,plotService,serverService){

			var vm = this;

			var i = 0;
			var updateInterval = 2000;
	        var map = googlemapService.createMap();

	        vm.dataDevices = [];
			vm.nameSelect= [];

			putInitialData();
			    
			vm.viewDataDevice = function(){
				for (i = 0; i < vm.dataDevices.length; i++){
	                  if(vm.dataDevices[i].name == vm.nameSelected)
	                  {
	                  
	                  	vm.lowerlimit = vm.dataDevices[i].limitdown;
	                  	vm.current = vm.dataDevices[i].current;
	                  	vm.upperlimit = vm.dataDevices[i].limitup;
	                  	vm.address = vm.dataDevices[i].address;
	                  	vm.description = vm.dataDevices[i].description;

						googlemapService.positionPoint(vm.dataDevices[i].latitude,vm.dataDevices[i].longitude,map);

						//initialize the real time grphic
						plotService.initPlot();

						update();
	                  	break;
	                  }   
	        	}
			}

			///this is for the graphic   

		    function update(){

		    	serverService.getDataDevices().then(function(receiv){
					vm.current = plotService.drawPlot(receiv,vm.nameSelected);
	        		setTimeout(update, updateInterval);	      	
			    });
		    };


		    function putInitialData(){

		    	serverService.getDataDevices().then(function(da){
			      	vm.dataDevices = da;
			      	
			      	for (i = 0; i < vm.dataDevices.length; i++)
			          var mark = googlemapService.createMarkers(vm.dataDevices[i],map);
		    	
	    		});
		    };


		}

})();

