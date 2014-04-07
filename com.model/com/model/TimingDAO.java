package com.model;

import com.googlecode.objectify.*;

import java.util.*;

public class TimingDAO {
	static {
		ObjectifyService.register(Timing.class);

	}

	public static void add(Timing timing) {
		Objectify ofy = ObjectifyService.begin();
		ofy.put(timing);
	}

	public static void addAll(List<Timing> timingList) {
		Objectify ofy = ObjectifyService.begin();
		ofy.put(timingList);
	}

	public static void delete(String id) {
		Objectify ofy = ObjectifyService.begin();
		ofy.delete(id);
	}

	public static Timing retrieve(long id) {

		Objectify ofy = ObjectifyService.begin();
		Timing timing;
		try {
			timing = ofy.get(Timing.class, id);
		} catch (NotFoundException e) {
			return null;
		}

		return timing;
	}

	public static Query<Timing> retrieveAll() {
		Objectify ofy = ObjectifyService.begin();
		Query<Timing> u = ofy.query(Timing.class);
		return u;
	}

	public static void deleteAll() {
		Objectify ofy = ObjectifyService.begin();
		Query<Timing> list = retrieveAll();
		ofy.delete(list);
	}

	public static void update(Timing user) {
		Objectify ofy = ObjectifyService.begin();
		ofy.put(user);
	}
}