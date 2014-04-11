package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.googlecode.objectify.Query;
import com.model.Timing;
import com.model.TimingDAO;

public class endTiming extends HttpServlet {
    String val3;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
        	HttpSession thisSession = request.getSession();
        	long thisID = (long)thisSession.getAttribute("id");
	        Calendar cal = Calendar.getInstance();
	    	cal.getTime();
	    	cal.add(Calendar.HOUR_OF_DAY, 8);
	    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	String endtime = sdf.format(cal.getTime());
	    	
	    	
	    	Timing thisTiming = TimingDAO.retrieve(thisID);
	    	String starttime = thisTiming.getStarttime();
	    	String difference = "";
	    	try{
		    	Date start = sdf.parse(starttime);
		    	Date end = sdf.parse(endtime);
		    	
		    	long diff = end.getTime() - start.getTime();
		    	long diffSeconds = diff / 1000 % 60;
				long diffMinutes = diff / (60 * 1000) % 60;
				long diffHours = diff / (60 * 60 * 1000) % 24;
				difference = diffHours + " Hours, " + diffMinutes + "Mins, " + diffSeconds + "Secs"; 
				
	    	} catch(Exception ex){
	    		ex.printStackTrace();
	    	}
	    	thisTiming.setEndtime(endtime);
	    	thisTiming.setTimeTaken(difference);
	    	TimingDAO.update(thisTiming);
        } catch(Exception ex){}
        RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp"); 
		dispatcher.forward(request,response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}