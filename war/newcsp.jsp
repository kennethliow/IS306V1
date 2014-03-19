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
	<link media="screen" rel="stylesheet" type="text/css" href="./css/newcsp.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/tcal.css" />
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="./js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="./js/jquery.toastmessage.js"></script>
	<script type="text/javascript" src="./js/tcal.js"></script>
	<script type="text/javascript">
		$(document).on('click', "#confirm", function () {
			event.preventDefault();
			window.location.href = "./orgcspdetails.jsp?newcsp=true";
		});
		$(document).on('click', "#cancel", function () {
			event.preventDefault();
			$("#lean_overlay").fadeOut(200);
			$('#popup2').css({
				"display" : "none"
			});
		});
		$(document).on('click', "#tab1b", function () {
			event.preventDefault();
			$('#2').removeClass('disabledclick');
			$('#2').addClass('active');
			
			$('#tab1').hide();
			$('#tab2').fadeIn();
		});
		
		$(document).on('click', "#tab2b", function () {
			event.preventDefault();
			$('#3').removeClass('disabledclick');
			$('#3').addClass('active');
			
			$('#tab2').hide();
			$('#tab3').fadeIn();
		});
		$(document).on('click', "#tab3b", function () {
			event.preventDefault();
			$('#4').removeClass('disabledclick');
			$('#4').addClass('active');
			
			$('#tab3').hide();
			$('#tab4').fadeIn();
		});
		$(document).on('click', "#tab4b", function () {
			event.preventDefault();
			$('#5').removeClass('disabledclick');
			$('#5').addClass('active');
			
			$('#tab4').hide();
			$('#tab5').fadeIn();
		});
		$(document).on('click', "#tab5b", function () {
			$('#manualclick').trigger('click');
			$('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
			return false;
		});
		
		$(document).on('click', "#1", function (e) {
			hideall();
			$('#tab1').fadeIn();
		});
		$(document).on('click', "#2", function (e) {
			if(!$(e.target).closest('.disabledclick').length){
				hideall();
				$('#tab2').fadeIn();
			}
		});
		$(document).on('click', "#3", function (e) {
			if(!$(e.target).closest('.disabledclick').length){
				hideall();
				$('#tab3').fadeIn();
			}
		});
		$(document).on('click', "#4", function (e) {
			if(!$(e.target).closest('.disabledclick').length){
				hideall();
				$('#tab4').fadeIn();
			}
		});
		$(document).on('click', "#5", function (e) {
			if(!$(e.target).closest('.disabledclick').length){
				hideall();
				$('#tab5').fadeIn();
			}
		});
		function hideall(){
			if ($('#tab1').is(":visible")){
				$('#tab1').hide();
			}
			if ($('#tab2').is(":visible")){
				$('#tab2').hide();
			}
			if ($('#tab3').is(":visible")){
				$('#tab3').hide();
			}
			if ($('#tab4').is(":visible")){
				$('#tab4').hide();
			}
			if ($('#tab5').is(":visible")){
				$('#tab5').hide();
			}
		}
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
					 <div class="btn-group">
                        <button class="btn btn-info active" id="1">Terms & Agreements</button>
                        <button class="btn btn-info disabledclick" id="2">About Organization</button>
                        <button class="btn btn-info disabledclick" id="3">Project Details</button>
                        <button class="btn btn-info disabledclick" id="4">Sponsors & Beneficiaries</button>
                        <button class="btn btn-info disabledclick" id="5">Confirm CSP Details</button>
                    </div>
                    <div class="spacer" class="newcspdiv"></div>
                    <div id="newcspcontainer" class="newcspdiv">
                    	<div id="tab1">
	                    	<div id="tnc1">
	                    		<p align="left">This is   a legal agreement between you as an individual and OneCommunity, Inc. (&quot;OneCommunity&quot;),   and governs the terms and conditions of your use of OneCommunity Products (as   defined below) and any updates that may be provided. This Agreement, along   with any written documentation expressly incorporated herein by reference and   published from time to time by OneCommunity (collectively, the   &quot;Agreement&quot;), constitutes the entire agreement between OneCommunity   and you regarding OneCommunity Products, and supersedes all prior agreements   between the parties regarding the subject matter of this Agreement. <br />
						        <br />
						            <strong>Definition of Terms</strong> <br />
						        a.   OneCommunity, Inc. is referred to herein as OneCommunity,&quot;   &quot;we,&quot; &quot;us,&quot; or &quot;our.&quot; <br />
						        b. You, as the user, are referred to herein as &quot;you,&quot;   &quot;user,&quot; or &quot;customer.&quot; <br />
						        c. OneCommunity software (whether preinstalled, on a medium, or offered by   download), OneCommunity services, OneCommunity websites (including, without   limitation, www.backblaze.com) and all other software, features, tools,   websites, documentation and services provided by OneCommunity, Inc. are referred   to herein as OneCommunity Products.<br />
						        <br />
						        <strong>To Use OneCommunity Products You Must Agree to these Terms of   Service </strong> <br />
						        By using   a OneCommunity Product, you agree to these terms and conditions (&quot;Terms of   Service&quot;) and the OneCommunity Privacy Policy. Each time you use a OneCommunity   Product, you reaffirm your acceptance of the then-current Terms of Service.   If you do not wish to be bound by these Terms of Service, you may discontinue   using the OneCommunity Products. You cannot use OneCommunity Products until you   have accepted these Terms of Service. You represent and warrant that you have   adequate legal capacity to enter into binding agreements such as these Terms   of Service.<br />
						        <br />
						        <strong>Acceptable Use</strong> <br />
						        You are solely responsible   for your conduct and your data related to the Service. The Products are made   available to you only for your personal use, which use must be in compliance   with all applicable laws, rules and regulations and must not infringe or   violate third party rights. You may not make commercial use of the Software   or service, including but not limited to selling or distributing the Software   and/or Service to any third party. </p>
						        <p align="left">You   agree to defend, indemnify and hold harmless OneCommunity, its vendors, and   their respective directors, officers, employees and agents from and against   all claims and expenses, including attorneys' fees, arising out of your use   of the OneCommunity Products.<br />
						        <br />
						            <strong>Product License</strong> <br />
						        OneCommunity   and its vendors grant you a personal, non-exclusive, non-transferable limited   license to install the Products distributed by OneCommunity in object code form   only on any computer or device from which you wish to access the OneCommunity   service for the sole and exclusive purpose of using the OneCommunity Products in   accordance with these Terms of Service. </p>
						        <p align="left">You   agree to install and use a paid subscription to any of the OneCommunity Products   on only one device at a time. If you wish to protect multiple devices, each   requires a separate paid subscription.<br />
						        <br />
						            <strong>Restrictions on Use of Products</strong> <br />
						        You   may access OneCommunity Products only through the interfaces and protocols   provided or authorized by OneCommunity. You agree that you will not access OneCommunity   Products through unauthorized means. You may not obtain the communications   protocol for accessing the OneCommunity service, the OneCommunity Products, or any   other OneCommunity services. OneCommunity may offer Products that limit the time,   type of files, storage space, or other features. You agree not to attempt to circumvent   these limitations in any way. <br />
						        <br />
						        <strong>Equipment</strong> <br />
						        You   are responsible for obtaining your own Internet access, such as maintaining   all telephone, computer hardware and other equipment needed to use the OneCommunity   Products. Any charges incurred by you to access OneCommunity are your   responsibility. <br />
						        <br />
						        <strong>User Accounts and Passwords</strong><br />
						        You   are responsible for keeping your password secure. You will be solely   responsible and liable for any activity that occurs under your user name. If   you lose your password or the encryption key for your account, you may not be   able to access your Data.<br />
						        <br />
						        <strong>Changes to the Service</strong> <br />
						        OneCommunity   occasionally will provide automatic upgrades to improve your OneCommunity   experience, although these upgrades may not be consistent across all platform   and devices. You agree to take no action to interfere with such automatic   upgrades, scanning, and related services. OneCommunity has the right at any time   to change, modify, add to or discontinue or retire any aspect or feature of   the OneCommunity Products including, but not limited to, the software, hours of availability,   equipment needed for access or use, the maximum disk space that will be   allotted on OneCommunity servers on your behalf, or the availability of OneCommunity   Products on any particular device or communications service. OneCommunity has no   obligation to provide you with notice of any such changes. <br />
						        <br />
						        <strong>Fair Use</strong> <br />
						        OneCommunity   reserves the right to terminate or suspend accounts of users who violate   these Terms of Service or who OneCommunity deems, in its sole discretion, to be   “abusers.” Such users may be notified prior to suspension or termination of   their accounts; however, OneCommunity is not required to provide prior notice.   Any failure by OneCommunity to enforce this policy will not preclude us from   enforcing it at anytime in the future, whether for past or current violations. <br />
						        <br />
						        <strong>Intellectual Property</strong> <br />
						        You may not sell, assign, grant a security interest in or   otherwise transfer any right in the Products or incorporate them (or any   portion of them) into another product. You may not translate,   reverse-engineer or reverse-compile or decompile, disassemble, make   derivative works from, or otherwise attempt to discover any source code in   the Software. You may not modify the Products or use them in any way not   expressly authorized by these Terms of Service. You may not authorize or   assist any third party to do any of the things described in this paragraph.<br />
						        All   trademarks appearing on the OneCommunity Products are the property of their   respective owners, including, without limitation, OneCommunity, Inc. <br />
						        <br />
						        <strong>Data Collection and Privacy Policy</strong> <br />
						        OneCommunity   Products may require you to register and provide certain personal information   to OneCommunity, such as name, e-mail address, date of birth, zip code (the   &quot;Personal Information&quot;). If you register for any OneCommunity Product,   you agree to provide accurate and complete Personal Information and you agree   to keep such information current. <br />
						        The OneCommunity Privacy Policy describes how OneCommunity collects   and uses Personal Information. You consent to OneCommunity’s use of your   Personal Information under the terms of the OneCommunity Privacy Policy   available at <a href="http://www.backblaze.com/privacy">www.backblaze.com/privacy</a>. <br />
						        <br />
						        <strong>Disclaimer of Warranty; Limitation of Liability</strong> <br />
						        DISCLAIMER   OF WARRANTIES. YOUR USE OF BACKBLAZE PRODUCTS IS AT YOUR SOLE RISK. THE BACKBLAZE   PRODUCTS ARE PROVIDED &quot;AS IS,&quot; &quot;WITH ALL FAULTS&quot; AND   &quot;AS AVAILABLE&quot; FOR YOUR USE, WITHOUT WARRANTIES OF ANY KIND, EITHER   EXPRESS OR IMPLIED, UNLESS SUCH WARRANTIES ARE LEGALLY INCAPABLE OF   EXCLUSION. SPECIFICALLY, BACKBLAZE AND ITS VENDORS DISCLAIM IMPLIED   WARRANTIES THAT THE BACKBLAZE PRODUCTS ARE MERCHANTABLE, OF SATISFACTORY   QUALITY, ACCURATE, FIT FOR A PARTICULAR PURPOSE OR NEED, OR NON-INFRINGING. BACKBLAZE   AND ITS VENDORS DO NOT WARRANT THAT THE FUNCTIONS CONTAINED IN THE BACKBLAZE   PRODUCTS WILL MEET YOUR REQUIREMENTS OR THAT THE OPERATION OF THE BACKBLAZE   PRODUCTS WILL BE UNINTERRUPTED OR ERROR-FREE, OR THAT DEFECTS IN THE BACKBLAZE   PRODUCTS WILL BE CORRECTED. BACKBLAZE AND ITS VENDORS DO NOT WARRANT OR MAKE   ANY REPRESENTATIONS REGARDING THE USE OR THE RESULTS OF THE USE OF THE BACKBLAZE   PRODUCTS IN TERMS OF THEIR CORRECTNESS, ACCURACY, RELIABILITY OR OTHERWISE. BACKBLAZE   PROVIDES THE BACKBLAZE PRODUCTS ON A COMMERCIALLY REASONABLE BASIS AND DOES   NOT GUARANTEE THAT USERS WILL BE ABLE TO ACCESS OR USE THE BACKBLAZE PRODUCTS   AT TIMES OR LOCATIONS OF THEIR CHOOSING. <br />
						        LIMITATION OF LIABILITY. BACKBLAZE'S ENTIRE LIABILITY AND YOUR   EXCLUSIVE REMEDY WITH RESPECT TO ANY DISPUTE WITH BACKBLAZE (INCLUDING   WITHOUT LIMITATION YOUR USE OF THE BACKBLAZE PRODUCTS) IS TO DISCONTINUE YOUR   USE OF THE BACKBLAZE PRODUCTS. BACKBLAZE AND ITS VENDORS SHALL NOT BE LIABLE   FOR ANY INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL, EXEMPLARY DAMAGE, OR   ANY OTHER CLAIM RELATED IN ANY WAY FROM YOUR USE OF BACKBLAZE PRODUCTS. THESE   EXCLUSIONS INCLUDE, WITHOUT LIMITATION, DAMAGES FOR LOST PROFITS, LOST DATA,   LOSS OF GOODWILL, WORK STOPPAGE, COMPUTER FAILURE OR MALFUNCTION, OR ANY   OTHER COMMERCIAL DAMAGES OR LOSSES, EVEN IF BACKBLAZE HAD BEEN ADVISED OF THE   POSSIBILITY THEREOF AND REGARDLESS OF THE LEGAL OR EQUITABLE THEORY UPON   WHICH THE CLAIM IS BASED. BECAUSE SOME STATES OR JURISDICTIONS DO NOT ALLOW   THE EXCLUSION OR THE LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL   DAMAGES, IN SUCH STATES OR JURISDICTIONS, BACKBLAZE AND ITS VENDORS'   LIABILITY IN SUCH STATE OR JURISDICTION SHALL BE LIMITED TO THE EXTENT   PERMITTED BY LAW. <br />
						        <br />
						        <strong>Modifications to the Terms of Service</strong> <br />
						        In   the event that OneCommunity makes material changes to these Terms of Service,   all current OneCommunity customers and trial users will be notified via email at   least 15 days before the modified Terms of Service go into effect. OneCommunity   will email users at the email address(es) provided by each user and is not   responsible for invalid addresses or undeliverable email. The modified Terms   of Service will be posted on our website at least 15 days in advance of the   effective date. You agree to the new posted Terms of Service by continuing   your use of the OneCommunity Products. If you do not agree with the modified Terms   of Service, your only remedy is to discontinue using OneCommunity Products and   cancel your registration. </p>
	                    	</div>
	                    	<br />
	                    	<div class="buttondiv">
	                    		<a href="" id="tab1b" class="btn-custom btn-large" style="float: right"> Agree & Proceed</a>
	                   		</div>
	                   	</div>
	                   	<div id="tab2">
	                   		<br />
	                   		<h2 class="header" style="margin-left: -2px">
								Organization Details
							</h2>
							<br />
	                   		<table style="width: 95%; margin: auto">
		                   		<tr>
		                   			<td width="20%">
		                   				Name of Organization: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				 
		                   			</td>
		                   			<td width="30%">
		                   				
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Organization Description: 
		                   			</td>
		                   			<td width="30%" colspan="3">
		                   				<textarea rows="5" style="overflow-y: scroll; overflow-x: hidden; width: 90%;">
		                   				</textarea>
		                   			</td>
		                   		</tr>
		                   	</table>
		                   	<br /><br />
		                   	<h2 class="header" style="margin-left: -2px">
								Contact Details
							</h2>
							<br />
	                   		<table style="width: 95%; margin: auto">
		                   		<tr>
		                   			<td width="20%">
		                   				Contact Person: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				 Phone Number:
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Contact Person Email: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				 Fax:
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Website URL: 
		                   			</td>
		                   			<td width="30%" colspan="3">
		                   				<input id="input-setting" style="width: 97%;" type="text"/>
		                   			</td>
		                   		</tr>
	                   		</table>
	                   		<br />
	                    	<div class="buttondiv">
	                    		<a href="" id="tab2b" class="btn-custom btn-large" style="float: right"> Next Stage: Project Details </a>
	                    		<a href="" id="tab2f" class="btn-cancel btn-large" style="float: right"> Prev Stage: Terms & Conditions </a>
	                   		</div>
	                   	</div>
	                   	<div id="tab3">
		                   	<br />
	                   		<h2 class="header" style="margin-left: -2px">
								Project Details
							</h2>
							<br />
	                   		<table style="width: 95%; margin: auto">
		                   		<tr>
		                   			<td width="20%">
		                   				CSP Project Name: 
		                   			</td>
		                   			<td width="30%" colspan="3">
		                   				<input id="input-setting" style="width: 97%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				CSP Start Date: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" name="date" class="tcal" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				CSP End Date: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" name="date" class="tcal" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				CSP Start Time: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				CSP End Time: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Address/Location of CSP: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				Overseas: 
		                   			</td>
		                   			<td width="30%">
		                   				<select id="input-setting" style="width: 90%;">
											<option selected></option>
											<option>Yes</option>
											<option>No</option>
										</select>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
										No of Organizing Committee:
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				No of Volunteers Required: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Recommended CSP Hours Awarded: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   			<td width="20%">
		                   				 
		                   			</td>
		                   			<td width="30%">
		                   				
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Project Description: 
		                   			</td>
		                   			<td width="30%" colspan="3">
		                   				<textarea rows="5" style="overflow-y: scroll; overflow-x: hidden; width: 93%;">
		                   				</textarea>
		                   			</td>
		                   		</tr>
	                   		</table>
	                   		<br />
	                    	<div class="buttondiv">
	                    		<a href="" id="tab3b" class="btn-custom btn-large" style="float: right"> Next Stage: Sponsors & Beneficiaries </a>
	                    		<a href="" id="tab3f" class="btn-cancel btn-large" style="float: right"> Prev Stage: About Organization </a>
	                   		</div>
	                   	</div>
	                   	<div id="tab4">
	                   			<br />
	                   		<h2 class="header" style="margin-left: -2px">
								Sponsors & Beneficiaries
							</h2>
							<br />
	                   		<table style="width: 95%; margin: auto">
	                   			<tr>
	                   				<td width="20%">
		                   				Sponsor/Beneficiary 1: 
		                   			</td>
		                   			<td width="80%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
	                   				<td width="20%">
		                   				Sponsor/Beneficiary 2: 
		                   			</td>
		                   			<td width="80%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
	                   				<td width="20%">
		                   				Sponsor/Beneficiary 3: 
		                   			</td>
		                   			<td width="80%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
	                   				<td width="20%">
		                   				Sponsor/Beneficiary 4: 
		                   			</td>
		                   			<td width="80%">
		                   				<input id="input-setting" style="width: 90%;" type="text"/>
		                   			</td>
		                   		</tr>
	                   		</table>
	                   		<br />
	                    	<div class="buttondiv">
	                    		<a href="" id="tab4b" class="btn-custom btn-large" style="float: right"> Next Stage: Confirm CSP Details </a>
	                    		<a href="" id="tab4f" class="btn-cancel btn-large" style="float: right"> Prev Stage: Project Details </a>
	                   		</div>
	                   	</div>
	                   	<div id="tab5">
	                   		<br />
	                   		<h2 class="header" style="margin-left: -2px">
								Confirm Project Details
							</h2>
							<br />
	                   		<table style="width: 95%; margin: auto">
		                   		<tr>
		                   			<td width="20%">
		                   				CSP Project Name: 
		                   			</td>
		                   			<td width="30%" colspan="3">
		                   				<input id="input-setting" style="width: 97%;" value="National Youth Envirolympics 2014" type="text" disabled="disabled"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				CSP Start Date: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" name="date" class="tcal" value="8 Jun 2014" type="text" disabled="disabled"/>
		                   			</td>
		                   			<td width="20%">
		                   				CSP End Date: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" name="date" class="tcal" value="22 Jun 2014" type="text" disabled="disabled"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				CSP Start Time: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" value="09:00" type="text" disabled="disabled"/>
		                   			</td>
		                   			<td width="20%">
		                   				CSP End Time: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" value="15:00" type="text" disabled="disabled"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Address/Location of CSP: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" value=" Mei Ling Street SAC" type="text" disabled="disabled"/>
		                   			</td>
		                   			<td width="20%">
		                   				Overseas: 
		                   			</td>
		                   			<td width="30%">
		                   				<select id="input-setting" style="width: 90%;" disabled="disabled">
											<option></option>
											<option>Yes</option>
											<option Selected>No</option>
										</select>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
										No of Organizing Committee:
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" value="6" type="text" disabled="disabled"/>
		                   			</td>
		                   			<td width="20%">
		                   				No of Volunteers Required: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" value="22" type="text" disabled="disabled"/>
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Recommended CSP Hours Awarded: 
		                   			</td>
		                   			<td width="30%">
		                   				<input id="input-setting" style="width: 90%;" value="40" type="text" disabled="disabled"/>
		                   			</td>
		                   			<td width="20%">
		                   				 
		                   			</td>
		                   			<td width="30%">
		                   				
		                   			</td>
		                   		</tr>
		                   		<tr>
		                   			<td width="20%">
		                   				Project Description: 
		                   			</td>
		                   			<td width="30%" colspan="3">
		                   				<textarea rows="5" style="overflow-y: scroll; overflow-x: hidden; width: 93%; font-size: 11px; font-family: Arial;" disabled="disabled">2014 will be the second year that SMU will be partnering the Lions Befrienders Service Association (LBSA); National Youth Envirolympics Challenge 2014 will be raising funds and necessities, and showing care and love to the envionment. Join us this summer where we'll have fun interaction sessions and challenging fund raisers starting from June! Contact us today via facebook Messaging, email us at smuchallenge@sa.smu.edu.sg, or visit our web site at <a href="www.smu.edu.sg/smuchallenge!">www.smu.edu.sg/smuchallenge!</a> Interaction sessions are the most meaningful as the volunteers can have better understanding towards the lives of the beneficiary. We will be heading down to the LBSA Senior Activity Centre at Mei Ling Street to interact with our beneficiaries. Fun interactive and mentally challenging games will be conducted to bond volunteers and environment together. This is to foster involvement from volunteers and to let them know who are they helping.</textarea>
		                   			</td>
		                   		</tr>
	                   		</table>
	                   		<br />
	                    	<div class="buttondiv">
	                    		<a href="" id="tab5b" class="btn-custom btn-large" style="float: right"> Confirm New Proposed CSP </a>
	                    		<a href="" id="tab5f" class="btn-cancel btn-large" style="float: right"> Prev Stage: Sponsors & Beneficiaries </a>
	                   		</div>
	                   	</div>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="./footer.jsp"%>
	<a rel="leanModal" name="popup2" href="#popup2" id="manualclick"></a> 
	<div id="popup2">
		<div id="cspmodal">
			Would You Like To Confirm The Proposal of the CSP Project?
		</div>
		<br />
		<div id="modalbuttondiv">
           	<a href="" class="btn-custom specialButton" id="confirm" style="float: left"> Confirm </a>
            <a href="" class="btn-cancel specialButton" id="cancel" style="float: right"> Cancel </a>
		</div>
	</div>
</body>
</html>