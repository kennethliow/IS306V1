<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	<script type="text/javascript" src="./js/jquery.toastmessage.js"></script>
	<script type="text/javascript" language="javascript" src="./js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#table1').dataTable( {
				"sScrollY": "200px",
				"bPaginate": false,
				"bScrollCollapse": true
			} );
		} );
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
		$(document).on('click', "#newcsp", function () {
			event.preventDefault();
			window.location.href = "./newcsp.jsp";
		});
	</script>
	<script type="text/javascript">
		$(document).on('click', ".go", function () {
			$('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
			return false;
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
					<div id="blank-container">
						<a href="" id="newcsp" class="btn-custom btn-large" style="float: right"> Propose New CSP </a>
					</div>
					<div id="accordion-container"> 
						<h2 class="f-accordion-header">My Projects</h2> 
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
											<td>Starring SMU 2014</td>
											<td>PAYM (Buona Vista)</td>
											<td>02/09/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>Project Agape: Tashkurgan IV (China)</td>
											<td>CROWN INN @ TASHKORGAN</td>
											<td>15/03/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>Project Piao</td>
											<td>Starring SMU</td>
											<td>01/05/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>SMU PAW Summer Shelter</td>
											<td>ANIMAL LOVERS' LEAGUE </td>
											<td>02/09/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
									</tbody>
								</table>
								<br />
						    </div> 
						    
						    <h2 class="accordion-header" id="pending">Pending</h2> 
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
										<tr class="odd gradeA">
											<td>T-Shirt Day 204</td>
											<td>Shirts of The World </td>
											<td>19/09/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeA">
											<td>Project Heart2Heart 5 (Chiang Mai, Thailand)</td>
											<td>ITAPON FOUNDATION</td>
											<td>18/02/2014</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
										<tr class="odd gradeX">
											<td>National Youth Envirolympics Challenge 2014</td>
											<td>LIONS BEFRIENDERS SERVICE ASSOCIATION </td>
											<td>19/02/2014</td>
											<td class="center"><a href="./orgcspdetails.jsp">Details</a></td>
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
										<tr class="odd gradeA">
											<td>Project Sparkle 5 (Philippines)</td>
											<td>MUNICIPALITY OF BATAD</td>
											<td>02/09/2012</td>
											<td class="center"><a href="./uncompleted.jsp">Details</a></td>
										</tr>
									</tbody>
								</table>
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