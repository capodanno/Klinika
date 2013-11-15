package com.itech.clinic

import com.itech.inventory.Inventory
import com.itech.inventory.Item
import com.itech.membership.Profile;
import com.itech.queue.DailyCounter
import com.itech.queue.PatientQueue
import com.itech.queue.QueueElement
import com.itech.revenue.Revenue

class Clinic {

	String clinicName
	String clinicHours
	String address
	String mobileNum
	String telNum
	String mission
	String vision
	String location
	String facebookUrl
	String twitterUrl
	String email
   

	PatientQueue queueToday
	Date dateToday
	DailyCounter counterToday
	static hasMany = [profiles:Profile,patientQueues:PatientQueue]

	Inventory inventory = Inventory.getInstance()
	Revenue revenue = Revenue.getInstance()
	
	//singleton class methods
	private static final INSTANCE = new Clinic()
	static getInstance(){
		return INSTANCE
	}
	private Clinic(){

	}

	static constraints = {
		clinicName blank: false
		clinicHours blank: false
		address blank: false, widget: 'textarea'
		mobileNum blank: false
		telNum blank: false
		mission blank: false
		vision blank: false
		location: blank: false
		facebookUrl blank: true
		twitterUrl blank: true
		email blank: false, email: true
	}
	
	//this has the activities that the Clinic does everyday
	def initialize()
	{
		if(dateToday!= new Date())
		{
			closeOut()
			dateToday = new Date()
			addToPatientQueues.(new PatientQueue (dateToday))
			queueToday = PatientQueue.findByDate(dateToday)
			inventory.update(dateToday);
			counterToday = new DailyCounter(dateToday)
		}
	}
	
	//this has the activities that the clinic does upon closing
	def closeOut()
	{
		
	}
	
	//this will let the user notify the patients with follow-up appts
	def notifyFollowUpAppts()
	{
		
	}
	
	//this will let the user notify the patients with bal
	def notifyPatientsWithBal(){
		
	}
	
	def makePurchase(Item item, int quantity, QueueElement queueElement)
	{
		def patient = queueElement.patient
		revenue.makePurchasePayment(item, patient)
	}

}
