package com.itech.queue

import com.itech.clinic.Clinic;

class PatientQueue {
	
	Date dateToday
	Date date
	
	static hasOne = Clinic
	static hasMany = [queueElements:QueueElement, dailyCounters:DailyCounter]

    static constraints = {
    }
}
