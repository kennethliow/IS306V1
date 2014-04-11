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
		$(document).ready(function() {
			<% if(csptrue){%>
				showSuccessToast("Your Proposed CSP Project Has<br /> Been Submitted For Processing");
				$('#pending').trigger('click');	
			<%}%>
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
	</script>
</head>
<body>
	<%@include file="./header.jsp"%>
	<div id="page">
		<div id="content">
			<div class="columns">
				<div id="sidepanel">
					<br />
					<div id="orglogo">
						<img id="side_logo" src="./img/org_img.jpg">
					</div>
					<div id="orgdetails">
						<table class="settingtable">
							<tr>
								<td class='tdparam'>
									Organizer: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="Amy Tan" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Company: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="Children Hospital Charity" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Email: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="amytan@chc.org" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Contact No: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="9213 3156" disabled="disabled">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div id="maincontent">
					<br />
					<div id="top">
						<div style="float: left;">
							National Youth Envirolympics Challenge 2014
							<br />
							<span class="top-emp">SMU Special Interest & Community Service Sodality (SICS)</span>
						</div>
						<div style="float: right; margin-top: 8px;">
							<span style="color: blue;">Pending Approval</span>
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
									23101
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
									14 Days
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
									22 Jun '14
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
						<p>2013 will be the second year that SMU will be partnering the Lions Befrienders Service Association (LBSA); SMU CHALLENGE will be raising funds and necessities, and showing care and love to the seniors at LBSA Mei Ling Street Seniors Activity Centre (SAC). Join us this summer where we'll have fun interaction sessions and challenging fund raisers starting from June! Contact us today via facebook Messaging, email us at smuchallenge@sa.smu.edu.sg, or visit our web site at <a href="www.smu.edu.sg/smuchallenge!">www.smu.edu.sg/smuchallenge!</a> Interaction sessions are the most meaningful as the volunteers can have better understanding towards the lives of the beneficiary. We will be heading down to the LBSA Senior Activity Centre at Mei Ling Street to interact with our beneficiaries. Fun interactive and mentally challenging games will be conducted to bond volunteers and elderly together. This is to foster involvement from volunteers and to let them know who are they helping.</p>
						<hr>
					</div>
					<div id="doclib">
						<div id="accordion-container" style="padding: 10px 0;"> 
							<h2 class="f-accordion-header">Document Library</h2>
						    <div class="f-accordion-content" style="padding: 5px; width: 714px !important; height: 420px;">
						    	<iframe width="100%" height="100%" frameborder="0" src="http://www.smusmif.com/own.php"></iframe>
						    </div>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="./footer.jsp"%>
</body>
</html>