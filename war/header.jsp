<script>
	$(document).on('click', ".bt_register", function () {
		event.preventDefault();
		$("div#panel").slideUp("slow");
		$('#email').val("");
		$('#cemail').val("");
		$('#signup').val("");
		showSuccessToast("A Confirmation Email Has Been <br />Sent To Your Account");
	});
	$(document).on('click', ".bt_login", function () {
		event.preventDefault();
		var username = $('#username').val();
		var password = $('#pwd').val();
		if(username=="amytan" && password=="amytan"){
			window.location.href = "./organizer.jsp";
		} else if(username=="alexsim" && password=="alexsim"){
			window.location.href = "./cfoursr.jsp";
		} else if((username=="bobkoh" && password=="bobkoh") || (username=="johnson" && password=="johnson")){
			window.location.href = "timing";
		} else{
			showErrorToast("Invalid Username/Password");
		}
	});
</script>
<%
	String holder = "Guest";
	String placetogo = "";
	String jspName = this.getClass().getSimpleName().replaceAll("_", ".");
	if(jspName.equals("organizer.jsp") || jspName.equals("newcsp.jsp") || jspName.equals("orgcspdetails.jsp")){
		holder="Amy Tan";
		placetogo = "organizer";
	} else if (jspName.equals("cfoursr.jsp") || jspName.equals("cfoursrdetails.jsp") || jspName.equals("cfoursrdetailstarring.jsp")){
		holder="Alex Sim";
		placetogo = "cfoursr";
	} else if (jspName.equals("volunteer.jsp") || jspName.equals("cspdetails.jsp") || jspName.equals("cspdetailstarring.jsp")  || jspName.equals("cspdetailschallenge.jsp") || jspName.equals("cspdetailsbethelehem.jsp")){
		holder="Bob Koh";
		placetogo = "volunteer";
	}
%>
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<% if(holder.equals("Guest")){ %>
			<div class="left">
				<h1>Welcome to OneCommunity</h1>
				<h2>Guests</h2>		
				<p class="grey">This login is only meant for OneCommunity Members only. To get more information on being a member of OneCommunity, you can contant our admistrators by sending us an email at onecommunity@smu.edu.sg. Thank you</p>
			</div>
			<div class="left">
					<form action="#" method="post">
					<h1>Not a Member Yet? Sign Up!</h1>				
					<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" size="23" />
					<label class="grey" for="email">Confirm Email:</label>
					<input class="field" type="text" name="cemail" id="cemail" size="23" />
					<label class="grey" for="signup">Username:</label>
					<input class="field" type="text" name="signup" id="signup" value="" size="23" />
					<label>An email will be sent to verify your details</label>
					<input type="submit" name="submit" value="Register" class="bt_register" />
				 </form>
			</div>
			<div class="left right">
				<!-- Login Form -->
				<form class="clearfix" method="post">
					<h1>Members Login</h1>
					<label class="grey" for="log">Username:</label>
					<input class="field" type="text" name="log" id="username" value="" size="23" />
					<label class="grey" for="pwd">Password:</label>
					<input class="field" type="password" name="pwd" id="pwd" size="23" />
					<!--<label><input name="rememberme" id="rememberme" type="checkbox" checked="checked" value="forever" /> &nbsp;Remember me</label>-->
					<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
					<a class="lost-pwd" href="#">Lost your password?</a>
				</form>
			</div>
			<% } else{ %>
			<div class="left right">
				<h1><%= holder %></h1>
				<label class="grey" for="log"><a href="./settings.php">My Profile</a></label>
				<label class="grey" for="log"><a href="./logout.php">Log out</a></label>
			</div>
			<% } %>
		</div>
	</div> <!-- /login -->	

	<!-- The tab on top -->	
	<div class="tab">
		<ul class="login">
			<li class="left">&nbsp;</li>
			<li>
				Welcome <%=holder %>!
			</li>
			<li class="sep">|</li>
			<% if(holder.equals("Guest")){ %>
			<li id="toggle">
				<a id="open" class="open" href="#">
					Login/Register
				</a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>			
			</li>
			<% } else{ %>
			<li>
				<a href="endtiming">Log Out</a>
			</li>
			<% } %>
			<li class="right">&nbsp;</li>
		</ul> 
	</div> <!-- / top -->
	
</div> <!--panel -->
<br />
<div id="header">
	<div class="container">
		<a href="./index.jsp" class="logo">
			<img src="./img/logo.png" alt="OneCommunity" class="logoPicture">
		</a>
	</div>
</div>
<div id="navigation">
	<div class="container">
		<div id="menu">
			<ul id="menu-mainmenu" class="sf-menu sf-js-enabled">
				<li class="menu-item">
					<a href="./index.jsp">Home</a>
				</li>
				<li class="menu-item">
					<a href="./uncompleted.jsp">About Us</a>
				</li>
				<li class="menu-item">
					<a href="./uncompleted.jsp">Recent News</a>
				</li>
				<li class="menu-item">
					<a href="./uncompleted.jsp">Events</a>
				</li>
				<li class="menu-item">
					<a href="./uncompleted.jsp">Media and Publications</a>
				</li>
				<li class="menu-item">
					<a href="./uncompleted.jsp">Contact Us</a>
				</li>
				<% if(!holder.equals("Guest")){ %>
					<li class="menu-item">
						<a href="./<%=placetogo%>.jsp"><font color="blue">My Profile</font></a>
					</li>
				<%} %>
			</ul>
			<div id="responsive-menu">
				<div class="responsive-select">
					<div class="menu-mainmenu-container"></div>
				</div>
				<span class="responsive-nav-icon icon-menu-2"></span>
			</div>
			<div class="home-search clearfix">
				<form method="get"> <!--action="."-->
				   <input type="search" placeholder="Search" name="search">
					   <span class="icon-search">
							<img src="./css/img/search.png" width="30px">
					   </span>
				   </input>
				</form>
			 </div>
		</div>
	</div>
</div>