package com.itech.queue

import com.itech.patient.Patient
import com.itech.revenue.Invoice
import enums.AppointmentType

class QueueElement {
	
	AppointmentType appointmentType
	String complaints
	Date date
	Patient patient
	String timeAdmitted

	static hasOne = Patient
	
	static constraints = {
	}
	
	public QueueElement(AppointmentType appointmentType,
		String complaints, Date date, Patient patient,
		String timeAdmitted) {
		super();
		this.appointmentType = appointmentType;
		this.complaints = complaints;
		this.date = date;
		this.patient = patient;
		this.timeAdmitted = timeAdmitted;
	}


	def Invoice generateInvoice()
	{
		
	}


}
