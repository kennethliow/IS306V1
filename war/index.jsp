<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>OneCommunity</title>
	<link media="screen" rel="stylesheet" type="text/css" href='./css/fontOswald.css' />
	<link media="screen" rel="stylesheet" type="text/css" href='./css/header.css' />
	<link media="screen" rel="stylesheet" type="text/css" href="./css/main.css?1368701179" />
	<link media="screen" rel="stylesheet" type="text/css" href="./css/showcase.css?1368701179"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/slide.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/leanModal.css"/>
	<link media="screen" rel="stylesheet" type="text/css" href="./css/jquery.toastmessage.css"  charset="utf-8" />
	<style type="text/css" media="screen">
		.menu2 { padding: 0; clear: both; }
		.menu2 li { display: inline; }
		.menu2 li a { background: #ccf; padding: 10px; float:left; border-right: 1px solid #ccf; border-bottom: none; text-decoration: none; color: #000; font-weight: bold;}
		.menu2 li.active a { background: #eef; }
		.contentx { float: left; clear: both; border-top: none; border-left: none; width: 100%; }
	</style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="./js/showcase.js?1368701181"></script>
	<script type="text/javascript" src="./js/login_slide.js"></script>
	<script type="text/javascript" src="./js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="./js/jquery.toastmessage.js"></script>
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
			<br />
			<ul id="menu2" class="menu2">
				<li class="active"><a href="#newsfeed">Newsfeed</a></li>
				<li><a href="#a">Organizer</a></li>
				<li><a href="#b">Volunteer</a></li>
				<li><a href="#c">C4SR</a></li>
			</ul>
			<div id="newsfeed" class="contentx">
				<div class="columns">
					<div id="col1">
						<div id="rotator" class="showcase">
							<div class="showcase-slide">
								<div class="showcase-content">
									<a href=".">
										<img src="./img/a.jpg">
									</a>
								</div>
								<div class="showcase-thumbnail">
									<div class="showcase-thumbnail-caption">Flashy Car Washes!</div>
								</div>
								<div class="showcase-caption">
									<h2><a href="http://google.html">Flashy Car Washes!</a></h2>
									<p>A one stop centre for social welfare programmes reaching out to over 20,000 residents in the estate. Funds will be raised through the washing of cars at Buona Vista, as well as Holland Village's carparks by the participants of starringSMU. <a class="go" rel="leanModal" name="popup" href="#popup"><font color="yellow"><u>Read More!</u></font></a></p>
								</div>
							</div>
							<div class="showcase-slide">
								<div class="showcase-content">
									<a href=".">
										<img src="./img/b.jpg">
									</a>
								</div>
								<div class="showcase-thumbnail">
									<div class="showcase-thumbnail-caption">Project Xinyuan</div>
								</div>
								<div class="showcase-caption">
									<h2><a href="http://google.html">Project Xinyuan</a></h2>
									<p>Project Xin Yuan is an Overseas Community Service Project aimed at igniting interest in the English language and teaching business and life skills to disabled and underprivileged Chinese youths at the Guangzhou English Training Centre for the Handicapped (GETCH).</p>
								</div>
							</div>
							<div class="showcase-slide">
								<div class="showcase-content">
									<a href=".">
										<img src="./img/c.jpg">
									</a>
								</div>
								<div class="showcase-thumbnail">
									<div class="showcase-thumbnail-caption">Project Luminaire 3 (Philippines)</div>
								</div>
								<div class="showcase-caption">
									<h2><a href="http://google.html">Project Luminaire 3 (Philippines)</a></h2>
									<p>Project Luminaire 3 is an OCSP with a mission to rebuild the village of Balunos after Typhoon Haiyan. In this third installation, we would be rebuilding parts of the school that had been damaged by the typhoon and also to reinstall some of the solar light bulbs that requires replacement.</p>
								</div>
							</div>
							<div class="showcase-slide">
								<div class="showcase-content">
									<a href=".">
										<img src="./img/d.jpg">
									</a>
								</div>
								<div class="showcase-thumbnail">
									<div class="showcase-thumbnail-caption">Project Moolah 2014</div>
								</div>
								<div class="showcase-caption">
									<h2><a href="http://google.html">Project Moolah 2014</a></h2>
									<p>Project Moolah is in its third year running and this year its beneficiaries are expanded to include both Northlight School, as well as Spectra Secondary School. With the expansion, we hope to be able to reach out to a greater number of students, making a greater impact in society.</p>
								</div>
							</div>
							<div class="showcase-slide">
								<div class="showcase-content">
									<a href=".">
										<img src="./img/e.jpg">
									</a>
								</div>
								<div class="showcase-thumbnail">
									<div class="showcase-thumbnail-caption">Starring 2014</div>
								</div>
								<div class="showcase-caption">
									<h2><a href="http://google.html">Starring 2014</a></h2>
									<p>YMCA Food of Love (FOL) is a YMCA Community Service Programme aimed at developing and empowering youths to serve low income elderly beneficiaries from senior activity centers under Central Singapore CDC. Youths will express their love through baking and delivering goods to the elderly. </p>
								</div>
							</div>
							<div class="showcase-slide">
								<div class="showcase-content">
									<a href=".">
										<img src="./img/f.jpg">
									</a>
								</div>
								<div class="showcase-thumbnail">
									<div class="showcase-thumbnail-caption">Project Touch 6 Philippines</div>
								</div>
								<div class="showcase-caption">
									<h2><a href="http://google.html">Project Touch 6 Philippines</a></h2>
									<p>Project Touch is a SMU student-initiated community service project that is in its 6th year running in benefiting the community of the Municipality of Concepcion and Barangay Lo-ong. </p>
								</div>
							</div>
						</div>  
					</div>
					<div id="col2">
						<div class="box">
							<h1>Welcome to OneCommunity</h1>
							<p>Volunteers play significant roles in building the communities, reaching out to the less privileged and spreading the message of how an effort of one or many can make a difference. Their inspiring contributions have helped connect people and created vibrant caring societies. OneCommunity was set up by a group of SMU Students to promote and grow the volunteering culture here in Singapore in 2014. </p>
							<br />
							<p>OneCommunity aims to promote and create a dynamic volunteerism culture through collaborative efforts with members of the public, community groups, schools/institutions and corporates. The portal lists volunteering opportunities for anyone who wants to volunteer and also for the non-profits, a way to recruit volunteers to support the work they do. Apart from that, SG Cares also provides non-profits the various support networks to increase and strengthen their volunteer management capabilities. Good volunteer management is pivotal in growing the volunteering culture.  </p>
						</div>
					</div>
				</div>
			</div>
			<div id="a" class="contentx">
				<div style="width: 70%; float: left;">
					<br />
					<h2 class="header">
						Organizers
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						Dear organizers, thank you for visiting OneCommunity. OneCommunity is a one-stop portal created for SMU CSP projects. On this portal, students may search for and apply for CSP projects. Subsequently, students may use this portal to submit documents and collaborate with C4SR and the Organizers. For organizers, this portal will allow them to create a project, seek the necessary approval online, put their project up for application, and finally conclude the project and submit the necessary proposal. Everybody can contribute and make a difference to the community and the lives of others. Some step forward in caring for the community and making a commitment to help manage volunteer projects. 
					</p>
					<br />
					<h2 class="header">
						How to Begin?
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						To begin, organizers can apply for an account on the top of the page. After doing so, an email is sent to organizers with the necessary instructions for project application.
					</p>
					<br />
					<h2 class="header">
						What are the requirements of an Organizer?
					</h2>
					<ul style="text-align: justify; margin-left: 25px; padding: 4px 8px;">
						<li>At least 18 years and above</li>
						<li>A volunteer who completed at least 3 SG Cares activities or nominated by fellow VL</li>
						<li>Passionate, able to communicate and relate well to other people</li>
						<li>Good interpersonal skills to make the team feel welcomed, well-informed and comfortable during the project</li>
					</ul>
					<br />
					<br /><br /><br /><br />
				</div>
				<div style="width: 29%; float: left;">
					<img src="./img/z.jpg" style="width: 100%;">
					<br /><br /><br /><br />
				</div>
			</div>
			<div id="b" class="contentx">
				<div style="width: 70%; float: left;">
					<br />
					<h2 class="header">
						Why Community Service?
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						In grooming visionary entrepreneurs and global business leaders of tomorrow, SMU recognizes the importance of preparing our students to be responsible citizens, demonstrating leadership and integrity within the communities they live and work. We want our students to give back to society. Our students are thus required to complete a minimum of 80 hours in community service as part of their graduation requirement. 
					</p>
					<br />
					<h2 class="header">
						What are the learning goals for Community Service?
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						Through community service, we hope to achieve the following:
					</p>
					<ul style="text-align: justify; margin-left: 25px; padding: 4px 8px;">
						<li>Develop qualities in students such as purposefulness, empathy and humility</li>
						<li>Help students acquire new skills, interests and knowledge</li>
						<li>Help students to form habits of volunteerism and contributing to the community</li>
						<li>Provide opportunities for students to be creative and work together to address society's needs</li>
						<li>Acquaint students with career possibilities in the nonprofit sector or in the CSR field</li>
					</ul>
					<br />
					<h2 class="header">
						When can you begin your community service?
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						The community service attachment may be undertaken anytime during students' course of study at SMU after you have attended the compulsory community service briefing conducted by C4SR. We encourage students to start early so as to have sufficient time to complete your graduation requirement. Starting earlier also gives you the opportunity to find a cause that you are passionate about, which you can continue to support beyond the 80 hours requirement. Many SMU students continue to volunteer beyond their graduation requirement as they see the impact of their contributions and wish to continue to help serve the non-profit organisations and the beneficiaries.
					</p>
					<br />
					<h2 class="header">
						How can you maximize your community service experience?
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						Go with a positive attitude. In the course of your service, reflect on your experience, how you have been impressed and challenged by the community service attachment, what you have learned about yourself in the process, how your worldview has been shaped and your attitudes about future careers in social service or needs in the community that you can help to address. It is hoped that, once experienced and internalized, the community service exposure will become a lifelong commitment to community engagement and social responsibility.
					</p>
					<br /><br /><br />
				</div>
				<div style="width: 29%; float: left;">
					<img src="./img/y.gif" style="width: 80%; float: right;">
				</div>
			</div>
			<div id="c" class="contentx">
				<div style="width: 70%; float: left;">
					<br />
					<h2 class="header">
						What is C4SR and its Role?
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						The Centre for Social Responsibility (C4SR) supports the development of social responsibility as a prized attribute for SMU students. It aims to instil continued passion in community engagement for the long-term development of SMU students and graduates.
					</p>
					<br />
					<p style="text-align: justify; padding: 4px 8px;">
						The Centre oversees the community service initiatives of SMU students and guides and mentors them to undertake local or overseas service learning projects that are meaningful and sustainable. The Centre also provides insights into best practices in community engagement and social responsibility initiatives.
					</p>
					<br />
					<h2 class="header">
						Our Responsibilities
					</h2>
					<p style="text-align: justify; padding: 4px 8px;">
						C4SR is the approving and regulating body for community service related project in SMU. For every CSP in SMU, the C4SR will set the guidelines for organizers to adhere to. Every organizer has to seek C4SR approval before they can formally be listed as a SMU CSP project and begin recruiting participants. During the project execution phase, C4SR will provide the organizer with guidance and support if necessary. C4SR may conduct audits by visiting the project site in this process. After project completion, C4SR will review the project, and together with the organizer, approve the awarding of CSP hour to participants.
					</p>
					<br /><br /><br /><br />
				</div>
				<div style="width: 29%; float: left;">
					<img src="./img/x.jpg" style="width: 95%; height: 240px; float: right;">
				</div>
			</div>
		</div>
	</div>
	<%@include file="./footer.jsp"%>
	
	<div id="popup">
		<div id="leftcol">
			<img class="imgcol" src="./img/a.jpg">
		</div>
		<div id="rightcol">
			<h1>Flashy Car Washes!</h1>
			<p>starringSMU'14 is a youth-initiated community service project organised by a team of students from Singapore Management University (SMU). Since its inception in 2007, starringSMU has been the largest community service project in SMU, and has impacted thousands of people in the community over the past five years. Our vision is to nurture the spirit of volunteerism, by going the extra mile and making a difference with a smile. </p>
			<br />
			<p>starringCARWASH, is starringSMU's signature event, where participants will have the opportunity to fundraise through a two-day car wash.Tickets are priced only at $10. All proceeds will go towards 'My Buona Vista Place', a one-stop centre for social welfare programmes reaching out to over 20,000 residents in the Buona Vista estate.</p>
			<br />
			<p>For more information or to purchase car wash tickets, please visit <a href="http://www.starringsmu.com/">starringSMU'14 | Going the Distance &amp; Making a Difference</a></p>
		</div>
	</div>
	<script src="./js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$('#menu2').tabify();
	</script>
</body>
</html>