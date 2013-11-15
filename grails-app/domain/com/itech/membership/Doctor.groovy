package com.itech.membership

/**
 * Doctor
 * A domain class describes the data object and it's mapping to the database
 * @author Randy
 * @version 1.0
 */
class Doctor extends Profile{
	
	String background
	String clinicHourStart
	String clinicHourEnd
	
	static hasMany = [rceptionists: Receptionist]

    static constraints = {
		background blank:false 
		clinicHourStart blank:false 
		clinicHourEnd blank:false 
		
    }
}
