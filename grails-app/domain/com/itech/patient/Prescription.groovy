package com.itech.patient

class Prescription {

	String clinicAddress
	String clinicMobileNumber
	String clinicName
	String clinicTelNumber
	Date date
	String description
	String age
	//	Doctor doctor
	
	static belongsTo = [patient:Patient]
	
    static constraints = {
    }
	
	public int calculatePatientAge(){
	//insert logic codes here
}
}
