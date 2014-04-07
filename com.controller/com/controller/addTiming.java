package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.googlecode.objectify.Query;
import com.model.Timing;
import com.model.TimingDAO;

public class addTiming extends HttpServlet {
    String val3;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Calendar cal = Calendar.getInstance();
    	cal.getTime();
    	cal.add(Calendar.HOUR_OF_DAY, 8);
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	String starttime = sdf.format(cal.getTime());
    	
    	Query<Timing> timingList =  TimingDAO.retrieveAll();
    	long idCount = timingList.count() + 1;
    	TimingDAO.add(new Timing(idCount, starttime ,""));
    	request.getSession().setAttribute("id", idCount);
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("./volunteer.jsp"); 
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