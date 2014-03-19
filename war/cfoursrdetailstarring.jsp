<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	String newcsp = request.getParameter("newcsp");
	boolean csptrue=false;
	if(newcsp != null && newcsp.equals("true")){
		csptrue = true;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>OneCommunity</title>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href='./css/fontOswald.css' />
	<link media="screen" rel="stylesheet" type="text/css" href='./css/header.css' />
	<link media="screen" rel="stylesheet" type="text/css" href="./css/main.css?1368701179" />
	<link media="screen" rel="stylesheet" type="text/css" href="./css/showcase.css?1368701179"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/slide.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/leanModal.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/jquery.toastmessage.css"  charset="utf-8" />
	<link media="screen" rel="stylesheet" type="text/css" href="./css/vallenato.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/minical.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/fullcalendar.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/cfoursr.css"/>
	<style type="text/css" title="currentStyle">
		@import "./css/demo_page.css";
		@import "./css/demo_table.css";
		div.table_Wrapper { border:10px solid blue; }
	</style>
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="./js/vallenato.js"></script>
	<script type="text/javascript" src="./js/showcase.js?1368701181"></script>
	<script type="text/javascript" src="./js/login_slide.js"></script>
	<script type="text/javascript" src="./js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="./js/fullcalendar.js"></script>
	<script type="text/javascript" src="./js/jquery.toastmessage.js"></script>
	<script type="text/javascript" language="javascript" src="./js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="utf-8">
		var date = new Date();
	    var d = date.getDate();
	    var m = date.getMonth();
	    var y = date.getFullYear();
	    
		$(document).ready(function() {
			$('#doclib').fadeIn();
			// MINI CALENDENDAR RENDERING
    		    $('#minicalendar').fullCalendar({
		        theme: true,
		        header: {
		            left: 'prev,today,next',
		            right: 'title'
		        },
		        editable: true,
		        eventMouseover: function(event, jsEvent, view) {
		            if (view.name !== 'agendaDay') {
		                $(jsEvent.target).attr('title', event.title);
		            }
		        },
		        events: [
	            {
		            title: '',
		            start: new Date(y, m, d-12, 12, 0),
		            end: new Date(y, m, d-11, 14, 0),
		            allDay: false},
		        {
		            title: '',
		            start: new Date(y, m, d + 1, 19, 0),
		            end: new Date(y, m, d + 5, 22, 30),
		            allDay: false},
		        {
		            title: '',
		            start: new Date(y, m, 25),
		            end: new Date(y, m+1, 2)
				}
		        ]
		    });
			
   		    $(".toggleclick").click(function (e) {
   				//get CSS display state of .toggle_chat element
   				var toggleState = $('.toggle_chat').css('display');
   				
   				//toggle show/hide chat box
   				$('.toggle_chat').slideToggle();
   				
   				//use toggleState var to change close/open icon image
   				if(toggleState == 'block')
   				{
   					$(".cheader div").attr('class', 'open_btn');
   				}else{
   					$(".cheader div").attr('class', 'close_btn');
   				}
   			});
		});
		
		$(document).on('click', "#viewbigcal", function () {
			$('#manualclick').trigger('click');
			$('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
			return false;
		});
		$(document).on('click', "#cfmapprove", function () {
			event.preventDefault();
		});
		$(document).on('click', "#confirm", function () {
			event.preventDefault();
			$('#cfmreject').fadeOut(100);
			$("#lean_overlay").fadeOut(200);
			$('#popup2').css({
				"display" : "none"
			});
			$('#cfmapprove').text('Applied - Pending Approval');
			showSuccessToast("Your Application Has Been <br />Submitted Successfully");
			$('#doclib').fadeIn();
		});
		
	</script>
</head>
<body>
	<%@include file="./header.jsp"%>
	<div id="page">
		<div id="content">
			<div class="columns">
				<div id="sidepanel">
					<div id="orgdetails">
						<table class="settingtable">
							<tr>
								<td colspan="2">
									<span style="font-weight: bolder;">CSP Projects Overview | 31 Feb '14</span>
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Active: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="17" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Pending: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="3" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Completed: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="4" disabled="disabled">
								</td>
							</tr>
						</table>
					</div>
					<div>
						<br />
						<hr>
						<br />
					</div>
					<div id='minicalendar'></div>
					
					<div style="float: left; width: 90%; text-align: center; margin-top: 10px;">
						<br />
						<a href="" id="viewbigcal" class="btn-custom btn-large" style="margin-left: auto; margin-right: auto;"> My CSP Calendar </a>
					</div>
				</div>
				<div id="maincontent">
					<br />
					<div id="top">
						<div style="float: left;">
							starringSMU 2014
							<br />
							<span class="top-emp">PAYM (Buona Vista)</span>
						</div>
						<div style="float: right;">
							<a href="" id="cfmapprove" class="btn-green btn-large" style="float: right;padding: 8px 45px 8px; margin-left: 5px;  margin-top: 5px; background-image: linear-gradient(#45d122, #176110);">Successfully Completed CSP</a>
						</div>
					</div>
					
					<div id="middle">
						<hr>
						<table>
							<tr>
								<td class="tdtitle">
									Job ID: 
								</td>
								<td class="tddes">
									23103
								</td>
								<td class="tdtitle">
									CSP Hours:
								</td>
								<td class="tddes">
									80
								</td>
							</tr>
							<tr>
								<td class="tdtitle">
									Attachment Period: 
								</td>
								<td class="tddes">
									5 Days
								</td>
								<td class="tdtitle">
									CSP Start Date:
								</td>
								<td class="tddes">
									8 Jun '14
								</td>
							</tr>
							<tr>
								<td class="tdtitle">
									Days Per Week: 
								</td>
								<td class="tddes">
									5.5
								</td>
								<td class="tdtitle">
									CSP End Date:
								</td>
								<td class="tddes">
									13 Jun '14
								</td>
							</tr>
							<tr>
								<td class="tdtitle">
									Overseas CSP: 
								</td>
								<td class="tddes">
									Yes
								</td>
								<td class="tdtitle">
									CSP Country:
								</td>
								<td class="tddes">
									Singapore
								</td>
							</tr>
							<tr>
								<td class="tdtitle">
									Contact Person: 
								</td>
								<td class="tddes">
									Ms Puspa
								</td>
								<td class="tdtitle">
									Contact Person No:
								</td>
								<td class="tddes">
									+855 17 914 442
								</td>
							</tr>
							<tr>
								<td class="tdtitle">
									Flight Arranged By: 
								</td>
								<td class="tddes">
									N/A
								</td>
								<td class="tdtitle">
									Airport Pickup:
								</td>
								<td class="tddes">
									N/A
								</td>
							</tr>
						</table>
						<hr>
					</div>
					
					<div id="bottom">
						<span style="font-weight: bolder;">CSP Description:</span>
						<p>2014 will be the second year that SMU will be partnering the Lions Befrienders Service Association (LBSA); National Youth Envirolympics Challenge 2014 will be raising funds and necessities, and showing care and love to the envionment. Join us this summer where we'll have fun interaction sessions and challenging fund raisers starting from June! Contact us today via facebook Messaging, email us at smuchallenge@sa.smu.edu.sg, or visit our web site at <a href="www.smu.edu.sg/smuchallenge!">www.smu.edu.sg/smuchallenge!</a> Interaction sessions are the most meaningful as the volunteers can have better understanding towards the lives of the beneficiary. We will be heading down to the LBSA Senior Activity Centre at Mei Ling Street to interact with our beneficiaries. Fun interactive and mentally challenging games will be conducted to bond volunteers and environment together. This is to foster involvement from volunteers and to let them know who are they helping.</p>
						<hr>
					</div>
					<div id="doclib">
						<div id="accordion-container" style="padding: 10px 0;"> 
							<h2 class="f-accordion-header">Document Library</h2>
						    <div class="f-accordion-content" style="padding: 5px; width: 714px !important; height: 420px;">
						    	<div style="margin-left: 8px;"><a href="./uncompleted">Necessary Documents Required For Submissions & Submission Guidelines</a></div>
						    	<iframe width="100%" height="100%" frameborder="0" src="http://www.smusmif.com/own.php"></iframe>
						    </div>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="./footer.jsp"%>
	
	<div id="shout_box">
		<div class="cheader toggleclick">
			<img class="onlinedot" src="./img/dot.png" alt="Online" width="7" height="7">
			&nbsp;starringSMU 2014 (Completed) 
			<div class="open_btn">&nbsp;</div>
		</div>
		<div class="toggle_chat">
			<iframe width="100%" height="100%" frameborder="0" src="http://www.smusmif.com/own/index.php?user=cfoursr"></iframe>
		</div>
	</div>
	
	
	<a rel="leanModal" name="popup" href="#popup3" id="manualclick"></a> 
	<div id="popup3">
		<iframe width="100%" height="100%" frameborder="0" src="./calendar.jsp"></iframe>
	</div>
	<a rel="leanModal" name="popup" href="#popup2" id="manualclick2"></a> 
	<div id="popup2">
		<div id="cspmodal">
			Would You Like To Confirm Your Application For This CSP? 
		</div>
		<br />
		<div id="modalbuttondiv">
           	<a href="" class="btn-custom specialButton" id="confirm" style="float: left"> Confirm </a>
            <a href="" class="btn-cancel specialButton" id="cancel" style="float: right"> Cancel </a>
		</div>
	</div>
</body>
</html>