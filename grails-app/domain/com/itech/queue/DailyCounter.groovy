package com.itech.queue

class DailyCounter {
	
	Date date
	int patientCount = 0
	
	static belongsTo = PatientQueue

    static constraints = {
    }
}
