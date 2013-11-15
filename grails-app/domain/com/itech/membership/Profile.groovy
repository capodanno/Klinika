package com.itech.membership

/**
 * Profile
 * A domain class describes the data object and it's mapping to the database
 * @author Randy
 * @version 1.0
 */
abstract class Profile {

	String firstName
	String middleName
	String lastName
	String address
	String email
	String mobileNum
	String telNum
	
    static constraints = {
		firstName blank:false 
		middleName blank:false 
		lastName blank:false 
		address blank:false 
		email blank:true 
		mobileNum blank:true 
		telNum blank:true 
		
    }
}
