package com.itech.patient

class Referral {

	
	String address
	String doctorName
	Date date
	
	static belongsTo = [patient:Patient]
	
    static constraints = {
    }
}
