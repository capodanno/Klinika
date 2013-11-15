package com.itech.patient

import com.itech.revenue.Invoice;

class Payment {

	
	Double amountPaid
	Double balance
	Date date
	boolean hasBalance
	
	
	static hasOne  = [patient:Patient]
	static hasMany = [invoices:Invoice]
	
    static constraints = {
    }
}
