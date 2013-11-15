package com.itech.patient

class VitalSigns {

	Date lastMenstruationPeriod
	String bloodPressure
	Date date
	Double height //in cm
	String pulseRate
	Double weight //in kg
	
	static belongsTo = [patient:Patient]
	
    static constraints = {
    }
}
