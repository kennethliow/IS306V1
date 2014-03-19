/*!
 * Vallenato 1.0
 * A Simple JQuery Accordion
 *
 * Designed by Switchroyale
 * 
 * Use Vallenato for whatever you want, enjoy!
 */

$(document).ready(function()
{
	//Add Inactive Class To All Accordion Headers
	$('.accordion-header').toggleClass('inactive-header');
	
	//Set The Accordion Content Width
	var contentwidth = $('.accordion-header').width();
	$('.accordion-content').css({'width' : contentwidth });
	
	//Open The First Accordion Section When Page Loads
	$('.accordion-header').first().toggleClass('active-header').toggleClass('inactive-header');
	$('.accordion-content').first().slideDown().toggleClass('open-content');
	
	// The Accordion Effect
	$('.accordion-header').click(function () {
		if($(this).is('.inactive-header')) {
			$('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
			$(this).toggleClass('active-header').toggleClass('inactive-header');
			$(this).next().slideToggle().toggleClass('open-content');
		}
		
		else {
			$(this).toggleClass('active-header').toggleClass('inactive-header');
			$(this).next().slideToggle().toggleClass('open-content');
		}
	});
	
	return false;
});

$(document).ready(function()
{
	//Add Inactive Class To All Accordion Headers
	$('.f-accordion-header').toggleClass('f-inactive-header');
	
	//Set The Accordion Content Width
	var contentwidth = $('.f-accordion-header').width();
	$('.f-accordion-content').css({'width' : contentwidth });
	
	var pathname = window.location.pathname;
	if(pathname== "/cfoursrdetails.jsp" || pathname== "/cspdetails.jsp"){
		$('.f-accordion-content').first().hide();
	} else{
		//Open The First Accordion Section When Page Loads
		$('.f-accordion-header').first().toggleClass('f-active-header').toggleClass('f-inactive-header');
		$('.f-accordion-content').first().slideDown().toggleClass('f-open-content');
	}
	
	// The Accordion Effect
	$('.f-accordion-header').click(function () {
		if($(this).is('.f-inactive-header')) {
			$('.f-active-header').toggleClass('f-active-header').toggleClass('f-inactive-header').next().slideToggle().toggleClass('f-open-content');
			$(this).toggleClass('f-active-header').toggleClass('f-inactive-header');
			$(this).next().slideToggle().toggleClass('f-open-content');
		} else {
			$(this).toggleClass('f-active-header').toggleClass('f-inactive-header');
			$(this).next().slideToggle().toggleClass('f-open-content');
		}
	});
	
	return false;
});