<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link media="screen" rel="stylesheet" type="text/css" href="./css/fullcalendar.css"/>
	<style type="text/css">
		.fc-view-month .fc-event, .fc-view-agendaWeek .fc-event {
		    height: 15px;
		}
		/* Tooltip */

		#tooltip {
			position:absolute;
			z-index:9999;
			color:#fff;
			font-size:14px;
			width:180px;
			
		}
		
		#tooltip .tipHeader {
			height:8px;
			background:url(./css/img/tipHeader.gif) no-repeat;
		}
		
		
		#tooltip .tipBody {
			background-color:#000;
			padding:5px 5px 5px 15px;
		}
		
		#tooltip .tipFooter {
			height:8px;
			background:url(./css/img/tipFooter.gif) no-repeat;
		}
				
	</style>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="./js/fullcalendar.js"></script>
	<script type="text/javascript" charset="utf-8">
	var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();
	$(document).ready(function() {
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next',
				center: 'title',
				right: 'month'
			},
			height: 480,
			editable: false,
			events: [
				{
		            title: 'Project Phoa II (Cambodia)',
		            start: new Date(y, m, d-12, 12, 0),
		            end: new Date(y, m, d-6, 14, 0)},
		        {
		            title: 'SMU Challenge 2014',
		            start: new Date(y, m, d + 1, 19, 0),
		            end: new Date(y, m, d + 5, 22, 30)},
	            {
		            title: 'National Youth Envirolympics Challenge 2014',
		            start: new Date(2014, 2, 31, 19, 0),
		            end: new Date(2014, 3, 4, 22, 30)},
		        {
		            title: 'Project Xinyuan',
		            start: new Date(y, m, 25),
		            end: new Date(y, m+1, 2),
				}
			]
		});
	});
	
	$(document).ready(function() {

		//Select all anchor tag with rel set to tooltip
		$('.fc-day-number').mouseover(function(e) {
			
			//Grab the title attribute's value and assign it to a variable
			var date = $(this).text();	
			var tip = "<Strong>CSP Projects: " + date + "th Feb </Strong><br /> 1) SMU Challenge 2014<br /> 2) Project Xinyuan<br /> 3) starringSMU 2014<br /> 4) Project Miao<br /> ";
			$(this).attr('title','');
			
			//Append the tooltip template and its value
			$(this).append('<div id="tooltip"><div class="tipHeader"></div><div class="tipBody">' + tip + '</div><div class="tipFooter"></div></div>');		
					
			//Show the tooltip with faceIn effect
			$('#tooltip').fadeIn('500');
			$('#tooltip').fadeTo('10',0.9);
			
		}).mousemove(function(e) {
		
			//Keep changing the X and Y axis for the tooltip, thus, the tooltip move along with the mouse
			$('#tooltip').css('top', e.pageY - 77 );
			$('#tooltip').css('left', e.pageX + 20 );
			
		}).mouseout(function() {
		
			//Put back the title attribute's value
			$(this).attr('title',$('.tipBody').html());
		
			//Remove the appended tooltip template
			$(this).children('div#tooltip').remove();
			
		});

	});
	</script>
</head>
<body>
	<div id="calendar"></div>
	
</body>
</html>