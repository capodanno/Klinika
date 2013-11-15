package com.itech.membership

import java.util.Date;

import enums.SecurityQuestion;

/**
 * User
 * A domain class describes the data object and it's mapping to the database
 * @author Randy
 * @version 1.0
 */
abstract class User extends SecUser{

	Date registrationDate
	SecurityQuestion secQuestion
	String secAnswer
	boolean isDeleted
	boolean isFirstLog

	static constraints = {
		registrationDate nullable:false
		secQuestion nullable:false
		secAnswer blank:false
	}

	User(){
		this.registrationDate = new Date()
	}
}
