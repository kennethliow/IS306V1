<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.googlecode.objectify.Query,com.model.Timing,com.model.TimingDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OneCommunity Results</title>
</head>
<body>
	<table width="100%">
	<tr>
		<th>SID</th>
		<th>Calendar Clicked</th>
		<th>Start Time</th>
		<th>End Time</th>
		<th>Total Time Taken</th>
	</tr>
	<%
		Query<Timing> timingList =  TimingDAO.retrieveAll();
		for(Timing thisTiming : timingList){%>
			<%="<tr>" %>
				<%="<td width='5%'>" + thisTiming.getId() +"</td>" %>
				<%="<td width='20%'>" + thisTiming.isCalendarClicked() +"</td>" %>
				<%="<td width='25%'>" + thisTiming.getStarttime() +"</td>" %>
				<%="<td width='25%'>" + thisTiming.getEndtime() +"</td>" %>
				<%="<td width='25%'>" + thisTiming.getTimeTaken() +"</td>" %>
			<%="</tr>" %>
		<%}
	%>
	</table>
</body>
</html>