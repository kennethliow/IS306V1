package com.model;

import java.io.Serializable;

import javax.persistence.Id;

import com.googlecode.objectify.annotation.Cached;
import com.googlecode.objectify.annotation.Indexed;
import com.googlecode.objectify.annotation.Unindexed;

@Cached
@Unindexed


public class Timing implements Serializable {
	@Id
	@Indexed private long id;
	@Indexed private String starttime;
	@Indexed private String endtime;
	private String timeTaken;
	private boolean calendarClicked;
	
	public Timing() {
	}

	public Timing(long id, String starttime, String endtime){
		this.id = id;
		this.starttime = starttime;
		this.endtime = endtime;
		this.timeTaken = "";
		this.calendarClicked = false;
	}
	
	public boolean isCalendarClicked() {
		return calendarClicked;
	}

	public void setCalendarClicked(boolean calendarClicked) {
		this.calendarClicked = calendarClicked;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}


	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getTimeTaken() {
		return timeTaken;
	}

	public void setTimeTaken(String timeTaken) {
		this.timeTaken = timeTaken;
	}

	public boolean equals(Object obj) {
		if (obj instanceof Timing) {
			Timing timing = (Timing) obj;
			if (id == timing.getId()) {
				return true;
			}
		}
		return false;
	}

}
