(function(){
	'use strict';
	angular.module("app")
	.factory("plotService",plotService);

		function plotService(){

			var dataR = [];
			var data = [];
			var plot;
			var totalPoints = 200;

		    var options = {
		       	grid:{borderColor:'#ccc'},
		        series:{shadowSize:0,color:"#33ff33"},
		        yaxis:{min:0,max:20},
		        xaxis:{min:0,max:200}
		    };

			var plotService = {
				initPlot : initPlot,
				drawPlot : drawPlot
			};

		    return plotService;

			function initPlot(){
				dataR = [];
				plot = $.plot($("#chart"), [0,0], options);
		    };

			function drawPlot(dataReceiv,nameSelected){
		      
		      	for (var i = 0; i < dataReceiv.length; i++){
		            if(dataReceiv[i].name == nameSelected)
		            {
		                data = dataReceiv[i];
						$("#colorCurrent").removeClass().addClass(dataReceiv[i].colorDevice);
		            }

		            $("#"+dataReceiv[i].name).removeClass().addClass(dataReceiv[i].colorDevice);
		        }

		  		if (dataR.length > 0)
		  			dataR = dataR.slice(1);

		        while (dataR.length < totalPoints) {
		          	dataR.push(data.current);
		        }

		        var res = [];

		        for (var i = 0; i < dataR.length; ++i)
		          	res.push([i, dataR[i]])


		      	plot.setData([res]);
				plot.draw();

				return data.current;

		    };

			
	
		}

})();
