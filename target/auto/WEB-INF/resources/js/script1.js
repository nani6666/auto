$(function() {
    $( ".column" ).sortable({
      connectWith: ".column",
      handle: ".portlet-header",
      cancel: ".portlet-toggle",
      placeholder: "portlet-placeholder ui-corner-all"
    });
 
    $( ".portlet" )
      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
      .find( ".portlet-header" )
        .addClass( "ui-widget-header ui-corner-all" )
        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
 
    $( ".portlet-toggle" ).click(function() {
      var icon = $( this );
      icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
      icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
    });
  });

 

$(document).ready(function() {
	
	var dialogText;
	$( "#onClickOpenDialog" ).click(function() {
		$.ajax({
        url: "dataz.json",
        dataType: "json",
        success: function(data) {
            console.log(data);
dialogText=data.data[0].text;
dialogText=data.data[1].text;
jQuery("#dialog").text(data.data[0].text);

$( "#dialog" ).dialog();
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log('ERROR', textStatus, errorThrown);
        }
    });
})
		
});


  
  




$.getJSON("AnalyticsFoxMain.json", function(json) {
    console.log(json); // this will show the info it in firebug console
	
	window.onload = function () {
	
	console.log(json);
	
	 $('#jsonImage').attr('src', json.image);
	 $( '#jsonText'  ).text(json.Company);
	 $('#jsonCde').text(json.Brand);
	 $('#jsonDesc').text(json.Description);
	var chart = new CanvasJS.Chart("chartContainer",
	{
		title:{
			text: "sentiment"
		},
                animationEnabled: true,
		legend:{
			verticalAlign: "center",
			horizontalAlign: "left",
			fontSize: 12,
			fontFamily: "Helvetica"        
		},
		theme: "red and blue",
		data: [
		{        
			type: "pie",       
			indexLabelFontFamily: "Garamond",       
			indexLabelFontSize: 20,
			indexLabel: "{label} {y}",
			startAngle:-25,      
			showInLegend: true,
			toolTipContent:" {y}",
			dataPoints: [
				{  y: json.Sentiment.positive},
				{ y: json.Sentiment.negative}
			
			]
		}
		]
	});
	chart.render();
 var chart = new CanvasJS.Chart("chartContainer1",
    {
      title:{
        text: ""    
      },
      animationEnabled: true,
      axisY: {
                tickThickness: 0,
                lineThickness: 0,
                valueFormatString: " ",
                gridThickness: 0                    
            },
			axisX: {
                tickThickness: 0,
                lineThickness: 0,
                labelFontSize: 0,
                labelFontColor: "Peru"

            },
      
      theme: "theme2",
      data: [

      {        
        type: "column",  
        showInLegend: true, 
        legendMarkerColor: "grey",
        legendText: "",
        dataPoints: [      
        {y: json.Source.facebook , label: "facebook"},
        {y:  json.Source.twitter , label: "twitter"},
               
        {y: json.Source.mouthshut,  label: "mouthshut"}        
        ]
      }   
      ]
    });

    chart.render();

	
	

        var chart = new CanvasJS.Chart("chartContainer3", {
            title: {
                text: "",
                fontFamily: "Verdana",
                fontColor: "Peru",
                fontSize: 12

            },
            animationEnabled: true,
			
            axisY: {
                tickThickness: 0,
                lineThickness: 0,
                valueFormatString: " ",
                gridThickness: 0                    
            },
            axisX: {
                tickThickness: 0,
                lineThickness: 0,
                labelFontSize: 16,
                labelFontColor: "Peru"

            },
            data: [
            {
                indexLabelFontSize: 12,
            

                indexLabelPlacement: "inside",
                indexLabelFontColor: "white",
                indexLabelFontWeight: 30,
                indexLabelFontFamily: "Verdana",
                color: "Gold ",
                type: "bar",
                dataPoints: [
                    { y: json.Issues.GearProblems, label: "Gear Problems" },
					{y: json.Issues.EngineKnocking, label: "Engine Knocking"  },
                    { y: json.Issues.PowerWindows, label: "Power Windows"  }


                ]
				
            }
            ]
        });

        chart.render();

 
	

google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Dealer1',    3540  ],
          ['Dealer2',1320]
          
        ]);

        var options = {
          title: 'others'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
chart.render();
   
   
   
   $(function () {
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },
        title: {
            text: 'Adjectives',
            align: 'center',
            verticalAlign: 'middle',
            y: 40
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}</b>'
        },
		plotOptions: {
            series: {
                cursor: 'pointer',
                point: {
                    events: {
                        click: function () {
                            alert('Category: ' + this.category + ', value: ' + this.y);
                        }
                    }
                }
            }
        },
        plotOptions: {
            pie: {
                dataLabels: {
                    enabled: true,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white',
                        textShadow: '0px 1px 2px black'
                    }
                },
                startAngle: -90,
                endAngle: 90,
                center: ['50%', '75%']
            }
        },
        series: [{
            type: 'pie',
            name: 'Adjectives',
            innerSize: '50%',
            data: [
                ['Space Inside',       2000],
      
                ['Looks',   4000],
                ['Reliability',    3000],
                {
                    name: 'Proprietary or Undetectable',
                    y: 0.2,
                    dataLabels: {
                        enabled: false
                    }
                }
            ]
        }]
    });
});

var chart = AmCharts.makeChart( "chartdiv", {
  "type": "pie",
  "theme": "light",
  "dataProvider": [ {
    "title": "petrol",
    "value": 3540
  }, {
    "title": "Diesel",
    "value": 1320
  } ],
  "titleField": "title",
  "valueField": "value",
  "labelRadius": 5,

  "radius": "42%",
  "innerRadius": "60%",
  "labelText": "[[title]]",
  "export": {
    "enabled": true
  }
} );


	}
});

