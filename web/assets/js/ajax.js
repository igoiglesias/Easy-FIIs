
$( document ).ready(function() {
	let upload = $('#upload').click(function(event){
		event.preventDefault();
	  	$('#conteudo').load('conteudo_upload.php');
	});

  	let relatorio = $('#relatorio').click(function(event){
	  	event.preventDefault();
	  	$('#conteudo').load('conteudo_relatorio.php', function(event){
	  		$.ajax({
	  			url: 'dados_controller.php',
	  			type: 'POST',
	  			dataType: 'json',
	  			data: {action: 'recupera'},
	  		})
	  		.done(function(result) {
	  			dados = result;
	  			// console.log(dados[0]['temperatura']);
	  			$(dados).each(function (i,dado){
		  			$('#dados').append(
		  				"<tr >\
		                    <td>"+dado.temperatura+"</td>\
		                    <td>"+dado.humidade+"</td>\
		                    <td>"+dado.orvalho+"</td>\
		                    <td>"+dado.luz+"</td>\
		                    <td>"+dado.latitude+"</td>\
		                    <td>"+dado.longitude+"</td>\
		                    <td>"+dado.dt_coleta+"</td>\
		                    <td>"+dado.dt_cadastro+"</td>\
		                 </tr>"
		  				);
		  		});
	  		})
	  		.fail(function() {
	  			console.log("error");
	  		})
	  		
	  			
	  	});

  	});
  	$("#temperaturaChart").ready(function(){
  		$.ajax({
	  			url: 'dados_controller.php',
	  			type: 'POST',
	  			dataType: 'json',
	  			data: {action: 'recupera'},
	  		})
	  		.done(function(result) {
	  			dados = result;
	  			var temperatura = [];
	  			var humidade = [];
	  			var dt_coleta = [];
	  			// console.log(dados[0]['temperatura']);
	  			$(dados).each(function (i,dado){
	  				temperatura.push(dado.temperatura);
	  				humidade.push(dado.humidade);
	  				dt_coleta.push(dado.dt_coleta);
	  			});

	  			var ctx = document.getElementById('temperaturaChart').getContext('2d');
				var chart = new Chart(ctx, {
				    // The type of chart we want to create
				    type: 'line',

				    // The data for our dataset
				    data: {
				        labels: dt_coleta,
				        datasets: [{
				            label: 'Temperatura',
				            lineTension: 0.3,
						    backgroundColor: "rgba(78, 115, 223, 0.05)",
						    borderColor: "rgba(78, 115, 223, 1)",
						    pointRadius: 3,
						    pointBackgroundColor: "rgba(78, 115, 223, 1)",
						    pointBorderColor: "rgba(78, 115, 223, 1)",
						    pointHoverRadius: 3,
						    pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
						    pointHoverBorderColor: "rgba(78, 115, 223, 1)",
						    pointHitRadius: 10,
						    pointBorderWidth: 2,
				            data: temperatura,
				            
				        },{
				            label: 'Humidade',
				            lineTension: 0.3,
						    backgroundColor: "rgba(199 ,21 ,133 , 0.05)",
						    borderColor: "rgba(199 ,21 ,133 , 1)",
						    pointRadius: 3,
						    pointBackgroundColor: "rgba(199 ,21 ,133 , 1)",
						    pointBorderColor: "rgba(199 ,21 ,133 , 1)",
						    pointHoverRadius: 3,
						    pointHoverBackgroundColor: "rgba(199 ,21 ,133 , 1)",
						    pointHoverBorderColor: "rgba(199 ,21 ,133 , 1)",
						    pointHitRadius: 10,
						    pointBorderWidth: 2,
				            data: humidade,
				            
				        }]
				    }

				});
	  			
	  		})
	  		.fail(function() {
	  			console.log("error");
	  		})
  		
  	});

  	$("#luzChart").ready(function(){
  		$.ajax({
	  			url: 'dados_controller.php',
	  			type: 'POST',
	  			dataType: 'json',
	  			data: {action: 'recupera'},
	  		})
	  		.done(function(result) {
	  			dados = result;
	  			var luz = [];
	  			var dt_coleta = [];
	  			// console.log(dados[0]['temperatura']);
	  			$(dados).each(function (i,dado){
	  				luz.push(dado.luz);
	  				dt_coleta.push(dado.dt_coleta);
	  			});

	  			var ctx = document.getElementById('luzChart').getContext('2d');
				var chart = new Chart(ctx, {
				    // The type of chart we want to create
				    type: 'bar',

				    // The data for our dataset
				    data: {
				        labels: dt_coleta,
				        datasets: [{
				            label: 'Luminosidade',
				            backgroundColor: "#4e73df",
						    hoverBackgroundColor: "#2e59d9",
						    borderColor: "#4e73df",
				            data: luz
				        }]
				    },

				    // Configuration options go here
				    options: {
					    maintainAspectRatio: false,
					    layout: {
					      padding: {
					        left: 10,
					        right: 25,
					        top: 25,
					        bottom: 0
					      }
					    },
					    scales: {
					      xAxes: [{
					        time: {
					          unit: 'date'
					        },
					        gridLines: {
					          display: false,
					          drawBorder: false
					        },
					        ticks: {
					          maxTicksLimit: 7
					        }
					      }],
					      yAxes: [{
					        
					        gridLines: {
					          color: "rgb(234, 236, 244)",
					          zeroLineColor: "rgb(234, 236, 244)",
					          drawBorder: false,
					          borderDash: [2],
					          zeroLineBorderDash: [2]
					        }
					      }],
					    },
					    legend: {
					      display: false
					    },
					    
  					}
				});
	  			
	  		})
	  		.fail(function() {
	  			console.log("error");
	  		})
  		
  	});

  	$("#orvalhoChart").ready(function(){
  		$.ajax({
	  			url: 'dados_controller.php',
	  			type: 'POST',
	  			dataType: 'json',
	  			data: {action: 'recupera'},
	  		})
	  		.done(function(result) {
	  			dados = result;
	  			var orvalho = [];
	  			var dt_coleta = [];
	  			// console.log(dados[0]['temperatura']);
	  			$(dados).each(function (i,dado){
	  				orvalho.push(dado.orvalho);
	  				dt_coleta.push(dado.dt_coleta);
	  			});

	  			var ctx = document.getElementById('orvalhoChart').getContext('2d');
				var chart = new Chart(ctx, {
				    // The type of chart we want to create
				    type: 'horizontalBar',

				    // The data for our dataset
				    data: {
				        labels: dt_coleta,
				        datasets: [{
				            label: 'Ponto de Orvalho',
				            backgroundColor: "#4e73df",
						    hoverBackgroundColor: "#2e59d9",
						    borderColor: "#4e73df",
				            data: orvalho
				        }]
				    },

				    // Configuration options go here
				    options: {
					    maintainAspectRatio: false,
					    layout: {
					      padding: {
					        left: 10,
					        right: 25,
					        top: 25,
					        bottom: 0
					      }
					    },
					    scales: {
					      xAxes: [{
					        time: {
					          unit: 'date'
					        },
					        gridLines: {
					          display: false,
					          drawBorder: false
					        },
					        ticks: {
					          maxTicksLimit: 7
					        }
					      }],
					      yAxes: [{
					        
					        gridLines: {
					          color: "rgb(234, 236, 244)",
					          zeroLineColor: "rgb(234, 236, 244)",
					          drawBorder: false,
					          borderDash: [2],
					          zeroLineBorderDash: [2]
					        }
					      }],
					    },
					    legend: {
					      display: false
					    },
					    
  					}
				});
	  			
	  		})
	  		.fail(function() {
	  			console.log("error");
	  		})
  		
  	});
 	

  
});

