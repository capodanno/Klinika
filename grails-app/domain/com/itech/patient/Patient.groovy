package com.itech.patient

import com.itech.revenue.Invoice
import com.itech.revenue.ItemInvoice
import enums.Gender
import enums.MaritalStatus

class Patient {

	String firstName
	String middleName
	String lastName
	Date birthDate
	Gender gender
	MaritalStatus maritalStatus
	Date dateOfRegistration = new Date()
	String emailAddress
	String city
	String street
	String town
	String province
	String mobileNumber
	String telNumber
	Boolean isActive
	Boolean isDeleted
	def logs= []
//	assert emptyList.size() == 0
//	emptyList.add(5)
	
    static constraints = {
		firstName blank:false
		middleName blank: false
		lastName blank:false
		birthDate blank:false
		gender blank:false
		maritalStatus blank:false
		emailAddress email:true
		city blank:true
		street blank:true
		town blank:false
		province blank: false
    }
	
	static hasMany = [vitalSigns:VitalSigns, diagnoses:Diagnosis, prescriptions:Prescription, medicalHistories:MedicalHistory, referrals:Referral,
		laboratoryResults:LaboratoryResult, payments:Payment, ]
	
	static mapping ={
		vitalSigns cascade: "all-delete-orphan"
		diagnoses cascade: "all-delete-orphan"
		prescriptions cascade: "all-delete-orphan"
		medicalHistories cascade: "all-delete-orphan"
		referrals cascade: "all-delete-orphan"
		laboratoryResults cascade: "all-delete-orphan"
		invoices cascade: "all-delete-orphan"
	}
	
	public void logActivity(def activityType)
	{
		String logMsg= LogCreator.createLog(ActivityType.valueOf(activityType));
		String logSentence = "${new Date()} : ${logMsg}"
		logs.add(logSentence)
	}

	@Override
	String toString() {
		def middleInitial = middleName.substring(0,1).toUpperCase()
		return "${lastName}, ${firstName} ${middleInitial}."
	};
	public Patient(String firstName, String middleName, String lastName,
			Date birthDate, Gender gender, MaritalStatus maritalStatus,
			Date dateOfRegistration, String emailAddress, String address_city,
			String address_street, String address_town,
			String address_province, String mobileNumber, String telNumber) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.birthDate = birthDate;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.dateOfRegistration = dateOfRegistration;
		this.emailAddress = emailAddress;
		this.city = city;
		this.street = street;
		this.town = address_town;
		this.province = address_province;
		this.mobileNumber = mobileNumber;
		this.telNumber = telNumber;
		this.isActive = true
		this.isDeleted = false
	}

	def createPurchase()
	{
		logActivity(ActivityType.PURCHASE)
		Invoice purhaseInvoice = new ItemInvoice()
	}
}
