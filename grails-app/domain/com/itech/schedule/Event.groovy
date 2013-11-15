package com.itech.schedule

import com.itech.membership.Doctor;


class Event {

	String name
	String location
	String details
	Date eventStart
	Date eventEnd
	
	static belongsTo = Doctor
	
    static constraints = { 
		 
    }
}
