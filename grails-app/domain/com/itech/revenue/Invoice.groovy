package com.itech.revenue


import enums.PaymentMethod
import enums.PaymentOption

abstract class Invoice {

	Date date
	boolean hasBalance
	int number
	String payer
	PaymentMethod payMethod
	PaymentOption payOption
	double totalAmount
	
    static constraints = { 
		
    }
}
