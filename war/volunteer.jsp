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
	<link media="screen" rel="stylesheet" type="text/css" href="./css/tcal.css" />
	<style type="text/css" title="currentStyle">
		@import "./css/demo_page.css";
		@import "./css/demo_table.css";
		div.table_Wrapper { border:10px solid blue; }
	</style>
	<style type="text/css">
		#tooltip {
			position:absolute;
			z-index:9999;
			color:#fff;
			font-size:11px;
			width:140px;
		}
		
		#tooltip .tipHeader {
			height:8px;
			background:url(./css/img/tipHeader.gif) no-repeat;
		}
		
		
		#tooltip .tipBody {
			background-color:#000;
			padding:1px 1px 1px 10px;
		}
		
		#tooltip .tipFooter {
			height:8px;
			background:url(./css/img/tipFooter.gif) no-repeat;
		}
				
	</style>
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="./js/vallenato.js"></script>
	<script type="text/javascript" src="./js/showcase.js?1368701181"></script>
	<script type="text/javascript" src="./js/login_slide.js"></script>
	<script type="text/javascript" src="./js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="./js/fullcalendar.js"></script>
	<script type="text/javascript" src="./js/jquery.toastmessage.js"></script>
	<script type="text/javascript" src="./js/typeahead.js"></script>
	<script type="text/javascript" src="./js/tcal.js"></script>
	<script type="text/javascript" language="javascript" src="./js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="utf-8">
		var date = new Date();
	    var d = date.getDate();
	    var m = date.getMonth();
	    var y = date.getFullYear();
	    
		$(document).ready(function() {
			$('#table1').dataTable( {
				"sScrollY": "100px",
				"bPaginate": false,
				"bScrollCollapse": true
			} );
			
			//TOOLTIP
			//Select all anchor tag with rel set to tooltip
			$('.viewcal').mouseover(function(e) {
				
				//Grab the title attribute's value and assign it to a variable
				var date = $(this).text();	
				var tip = "View In My Calendar";
				$(this).attr('title','');
				
				//Append the tooltip template and its value
				$(this).append('<div id="tooltip"><div class="tipHeader"></div><div class="tipBody">' + tip + '</div><div class="tipFooter"></div></div>');		
						
				//Show the tooltip with faceIn effect
				$('#tooltip').fadeIn('500');
				$('#tooltip').fadeTo('10',0.9);
				
			}).mousemove(function(e) {
			
				//Keep changing the X and Y axis for the tooltip, thus, the tooltip move along with the mouse
				$('#tooltip').css('top', e.pageY - 150 );
				$('#tooltip').css('left', e.pageX - 110 );
				
			}).mouseout(function() {
			
				//Put back the title attribute's value
				$(this).attr('title',$('.tipBody').html());
			
				//Remove the appended tooltip template
				$(this).children('div#tooltip').remove();
				
			});
			
			//TYPEAHEAD
			var csps;

			csps = new Bloodhound({
			    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.num); },
			    queryTokenizer: Bloodhound.tokenizers.whitespace,
			    local: [
			      { num: 'GIFT Programme 2014' },
			      { num: 'SMU PAW Summer Shelter' },
			      { num: 'starringSMU14' },
			      { num: 'Project Agape: Tashkurgan IV (China)' },
			      { num: 'Project Heart2Heart 5 (Chiang Mai, Thailand)' },
			      { num: 'Beyond Borders III (Indonesia)' },
			      { num: 'Project Formosa: Chapter III (Taiwan)' },
			      { num: 'Project Triveria 1 (Vietnam)' },
			      { num: 'Project Shining Lights 3 (Thailand)' },
			      { num: 'Project Sparkle 5 (Philippines)' }
			    ]
			});

			csps.initialize();

			$('.typeahead').typeahead(null, {
				displayKey: 'num',
			    source: csps.ttAdapter()
			});
			
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
		});
		$('#table2').dataTable( {
			"sScrollY": "200px",
			"bPaginate": false,
			"bScrollCollapse": true
		});
		$('#table3').dataTable( {
			"sScrollY": "200px",
			"bPaginate": false,
			"bScrollCollapse": true
		});
		
		$(document).on('click', "#viewbigcal", function () {
			$('#manualclick').trigger('click');
			$('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
			return false;
		});
		$(document).on('click', ".seecal", function () {
			$('#manualclick').trigger('click');
			$('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
			return false;
		});
		$(document).on('click', "#gh-btn", function () {
			event.preventDefault();
			if(!$('#manualsearchbutton').hasClass('f-active-header')){
				$('#manualsearchbutton').trigger('click');
			}
			var searchfield = " for " + $('#gh-ac').val();
			$('#no').text('12');
			$('#searchname').text(searchfield);
			$('.listitem').show();
		});
		$(document).on('click', "#gh-as-a", function () {
			event.preventDefault();
			$('#advsearch').slideToggle();
		});
		$(document).on('click', ".details", function () {
			event.preventDefault();
			var id = $(this).attr('id');
			if(id=="smuchallenge"){
				window.location.href = "./cspdetails.jsp";
			} else{
				window.location.href = "./uncompleted.jsp";
			}
		});
		var appclicked = "";
		var cspcount = false;
		$(document).on('click', ".apply", function () {
			if($(this).text() != 'Applied'){
				if(cspcount){
					event.preventDefault();
					showErrorToast("You Have Reached Your <br />Maximum No of CSP Applications");
				} else {
					appclicked = $(this).attr('id');
					$('#manualclick2').trigger('click');
					$('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
					return false;
				}
			} else{
				event.preventDefault();
				showSuccessToast("Your Application Is Currently <br />Being Processed");
			}
		});
		$(document).on('click', "#confirm", function () {
			event.preventDefault();
			$("#lean_overlay").fadeOut(200);
			$('#popup2').css({
				"display" : "none"
			});
			cspcount = true;
			$('#'+appclicked).text('Applied');
			showSuccessToast("Your Application Has Been <br />Submitted Successfully");
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
									<span style="font-weight: bolder;">CSP Hours Summary | 01 Jan '14</span>
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Completed: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="60" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td class='tdparam'>
									Outstanding: 
								</td>
								<td class='tdfield'>
									<input id="input-setting" type="text" value="20" disabled="disabled">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="http://centres.smu.edu.sg/web/matriculation2013/files/2013/05/Freshmen-2013-note-as-at-17-May-2013.pdf" style="margin-top: 5px;">Read SMU's Community Service Policy</a>
								</td>
							</tr>
						</table>
					</div>
					<br />
					<hr>
					<br />
					<div id='minicalendar'></div>
					
					<div style="float: left; width: 90%; text-align: center; margin-top: 10px;">
						<br />
						<a href="" id="viewbigcal" class="btn-custom btn-large" style="margin-left: auto; margin-right: auto;"> My CSP Calendar </a>
					</div>
				</div>
				<div id="maincontent">
					<br />
					
					<table class="gh-tbl2">
						<tbody>
							<tr>
								<td class="gh-td-s">
									<div id="gh-ac-box" class="">
										<div id="gh-ac-box2">
											<label class="gh-hdn g-hdn" for="gh-ac">Enter your search keyword</label>
											<input autocomplete="off" name="_nkw" id="gh-ac" placeholder="Search... " maxlength="300" size="50" class="typeahead gh-tb" type="text" autofocus="">
											<span role="status" aria-live="polite" class="ui-helper-hidden-accessible">
											</span>
										</div>
									</div>
									<div id="gAC">
										<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-1" tabindex="0" style="display: none; width: 408px;">
										</ul>
									</div>
								</td>
								<td class="gh-td" id="gh-cat-td">
									<div id="gh-cat-box">
										<select name="_sacat" id="gh-cat" size="1" class="gh-sb" title="Select a category for search">
											<option selected="selected">All Categories </option>
											<option>Animals</option>
											<option>Children</option>
											<option>Charity</option>
											<option>Disabled</option>
											<option>Environment</option>
											<option>Elderly</option>
											<option>Overseas</option>
										</select>
									</div>
								</td>
								<td class="gh-td">
									<input value="Search" id="gh-btn" class="btn btn-prim" type="submit" style="display: inline-block;">
								</td>
								<td class="gh-td">
									<div id="gh-as">
										<a id="gh-as-a" _sp="m570.l2614" title="Advanced Search" class="thrd" href="">Advanced</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div id="advsearch">
						<br />
						<table>
							<tr>
								<td width="20%">
									CSP Start Date:
								</td>
								
								<td width="30%">
									<input id="input-setting" name="date" class="tcal" type="text"/>
								</td>
								<td width="20%">
									Skillsets
								</td>
								
								<td width="30%">
									<select id="input-setting" >
										<option selected>All Skills</option>
										<option>Ballooning</option>
										<option>Drawing</option>
										<option>Raise Funds</option>
										<option>Photoshop</option>
										<option>Designing</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									CSP End Date:
								</td>
								<td>
									<input id="input-setting" name="date" class="tcal" type="text"/>
								</td>
								<td>
									Grant Applicability:
								</td>
								<td>
									<select id="input-setting" >
										<option selected></option>
										<option>Yes</option>
										<option>No</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									CSP Manager:
								</td>
								<td>
									<input id="input-setting" placeholder="Manager Name" type="text"/>
								</td>
								<td>
									Overseas:
								</td>
								<td>
									<select id="input-setting" >
										<option selected></option>
										<option>Yes</option>
										<option>No</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									Duration:
								</td>
								<td>
									<input id="input-setting" placeholder="Eg. 2 Weeks" type="text"/>
								</td>
								<td>
									Hours Clearable:
								</td>
								<td>
									<input id="input-setting" placeholder="Hours" type="text"/>
								</td>
							</tr>
						</table>
					</div>
					<br />
					
					<div id="accordion-container"> 
						<h2 class="f-accordion-header">CSP Projects</h2> 
					    <div class="f-accordion-content"> 
					        <h2 class="accordion-header">Active</h2> 
						    <div class="accordion-content"> 
						        <table cellpadding="0" cellspacing="0" border="0" class="display" id="table1">
									<thead>
										<tr>
											<th>Community Service Project Name</th>
											<th>Organizer</th>
											<th>Completion Date</th>
											<th>Details</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody>
										<tr class="odd gradeA">
											<td>starringSMU 2014</td>
											<td>PAYM (Buona Vista)</td>
											<td>02/09/2014</td>
											<td class="center"><a href="./cspdetailstarring.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>Founders Day 2014</td>
											<td>SMU Youths</td>
											<td>02/12/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
									</tbody>
								</table>
								<br />
						    </div> 
						    
						    <h2 class="accordion-header" id="pending">Pending Approval</h2> 
						    <div class="accordion-content">
								<table cellpadding="0" cellspacing="0" border="0" class="display" id="table2">
									<thead>
										<tr>
											<th>Community Service Project Name</th>
											<th>Organizer</th>
											<th>Completion Date</th>
											<th>Details</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody>
										<tr class="odd gradeC">
											<td>T-Shirt Day 204</td>
											<td>Shirts of The World </td>
											<td>19/09/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeC">
											<td>National Youth Envirolympics Challenge</td>
											<td>Special Interest & Community Service Sodality (SICS)</td>
											<td>19/02/2014</td>
											<td class="center"><a href="./cspdetails.jsp">Details</a></td>
										</tr>
									</tbody>
								</table>
						    </div>
						    
						    <h2 class="accordion-header">Completed</h2> 
						    <div class="accordion-content">
								<table cellpadding="0" cellspacing="0" border="0" class="display" id="table3">
									<thead>
										<tr>
											<th>Community Service Project Name</th>
											<th>Organizer</th>
											<th>Completion Date</th>
											<th>Details</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
									</tfoot>
									<tbody>
										<tr class="odd gradeA">
											<td>Beyond Borders III (Indonesia)</td>
											<td>PT. BINTAN RESORT CAKRAWALA</td>
											<td>02/09/2013</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>Project Formosa: Chapter III (Taiwan)</td>
											<td>TAIWAN FUND FOR CHILDREN AND FAMILIES</td>
											<td>12/11/2013</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>Project Triveria 1 (Vietnam)</td>
											<td>THE COMPASSION FLOWER</td>
											<td>15/03/2013</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
									</tbody>
								</table>
						    </div> 
					    </div>
						<h2 class="f-accordion-header" id="manualsearchbutton">Search Results</h2> 
					    <div class="f-accordion-content test">
							<div id="boundary">
								<h2 class="header">Search Results<span id="searchname"></span>: <span id="no">0</span> CSPs Found</h2>
								<br />
								<div class="listitem">
									<div class="leftitem">
										<span class="item-name">National Youth Envirolympics Challenge 2014</span>
										<span class="viewcal" style="font-weight: bolder; float: right;"><a class="seecal" href="#popup3">31 Mar '14 - 4 Apr ' 14</a></span><br />
										<div style="text-align: justify"><span class="item-description">2014 will be the second year that SMU will be partnering the Lions Befrienders Service Association (LBSA); National Youth Envirolympics Challenge 2014 will be raising funds and necessities, and showing care and love to the seniors at LBSA Mei Ling Street Seniors Activity Centre (SAC). Join us this summer where we'll have fun interaction sessions and challenging fund raisers starting from June!</span></div>
										<span class="item-deadline">Application Deadline: 04 Mar '14 </span>
									</div>
									<div class="rightitem">
										<a href="" id="1" class="btn-green btn-large apply" style="float: right;padding: 8px 25px 8px; margin-left: 5px; background-image: linear-gradient(#45d122, #176110);"> Apply </a>
										<a href="" id="smuchallenge" class="btn-custom btn-large details" style="float: right;padding: 8px 25px 8px;"> Details </a>
									</div>
								</div>
								<div class="listitem"><br /><hr><br /></div>
								<div class="listitem">
									<div class="leftitem">
										<span class="item-name">Project Phoa II (Cambodia)</span> 
										<span class="viewcal" style="font-weight: bolder; float: right;"><a class="seecal" href="#popup3">21 Mar '14 - 05 Apr ' 14</a></span> 
										<br />
										<div style="text-align: justify"><span class="item-description">Only selected participants may apply. Email project leader (rachelang.2013@socsc.smu.edu.sg) to indicate your interest before applying here. Project Phoa II's partner organisation is Educational Life International Cambodia (ELIC), based in Phnom Penh. ELIC's primary goal is<a href="">...</a></span></div>
										<span class="item-deadline">Application Deadline: 23 Mar '14 </span>
									</div>
									<div class="rightitem">
										<a href="" id="2" class="btn-green btn-large apply" style="float: right;padding: 8px 25px 8px; margin-left: 5px; background-image: linear-gradient(#45d122, #176110);"> Apply </a>
										<a href="" id="" class="btn-custom btn-large details" style="float: right;padding: 8px 25px 8px;"> Details </a>
									</div>
								</div>
								<div class="listitem"><br /><hr><br /></div>
								<div class="listitem">
									<div class="leftitem">
										<span class="item-name">SMU PAW Summer Shelter visit</span>
										<span class="viewcal" style="font-weight: bolder; float: right;"><a class="seecal" href="#popup3">31 Mar '14 - 01 Apr ' 14</a></span>
										<br />
										<div style="text-align: justify"><span class="item-description">Animal Shelter Visits Details There are 8 sessions available for sign-up with each session being able to accommodate a maximum of 5 people. Slots are awarded on a first-come-first-serve basis. To obtain CSP hours for<a href="">...</a></span></div>
										<span class="item-deadline">Application Deadline: 12 Apr '14 </span>
									</div>
									<div class="rightitem">
										<a href="" id="3" class="btn-green btn-large apply" style="float: right;padding: 8px 25px 8px; margin-left: 5px; background-image: linear-gradient(#45d122, #176110);"> Apply </a>
										<a href="" id="" class="btn-custom btn-large details" style="float: right;padding: 8px 25px 8px;"> Details </a>
									</div>
								</div>
								<div class="listitem"><br /><hr><br /></div>
								<div class="listitem">
									<div class="leftitem">
										<span class="item-name">Project Agape: Tashkurgan IV (China)</span>
										<span class="viewcal" style="font-weight: bolder; float: right;"><a class="seecal" href="#popup3">02 Mar '14 - 31 Apr ' 14</a></span>
										<br />
										<div style="text-align: justify"><span class="item-description">Project Agape: Tashkurgan was founded in 2010, and the first team headed to Tashkurgan in 2011.</span></div>
										<span class="item-deadline">Application Deadline: 02 Aug '14 </span>
									</div>
									<div class="rightitem">
										<a href="" id="4" class="btn-green btn-large apply" style="float: right;padding: 8px 25px 8px; margin-left: 5px; background-image: linear-gradient(#45d122, #176110);"> Apply </a>
										<a href="" id="" class="btn-custom btn-large details" style="float: right;padding: 8px 25px 8px;"> Details </a>
									</div>
								</div>
								<div class="listitem"><br /><hr><br /></div>
								<div class="listitem">
									<div class="leftitem">
										<span class="item-name">Project Heart2Heart 5 (Chiang Mai, Thailand)</span>
										<span class="viewcal" style="font-weight: bolder; float: right;"><a class="seecal" href="#popup3">21 Apr '14 - 25 Apr ' 14</a></span>
										<br />
										<div style="text-align: justify"><span class="item-description">his is only for those selected. Project Heart 2 Heart 5 is about promoting and providing basic education for villagers in Chiang Mai, Thailand. All proceeds will go towards the expansion of Good Kids Preschool</span></div>
										<span class="item-deadline">Application Deadline: 23 Mar '14 </span>
									</div>
									<div class="rightitem">
										<a href="" id="5" class="btn-green btn-large apply" style="float: right;padding: 8px 25px 8px; margin-left: 5px; background-image: linear-gradient(#45d122, #176110);"> Apply </a>
										<a href="" id="" class="btn-custom btn-large details" style="float: right;padding: 8px 25px 8px;"> Details </a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br />
					
				</div>
			</div>
		</div>
	</div>
	<%@include file="./footer.jsp"%>
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