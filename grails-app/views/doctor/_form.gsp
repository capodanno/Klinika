<%@ page import="com.itech.membership.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="doctor.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${doctorInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="doctor.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${doctorInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="doctor.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${doctorInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="doctor.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${doctorInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="doctor.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${doctorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'mobileNum', 'error')} ">
	<label for="mobileNum">
		<g:message code="doctor.mobileNum.label" default="Mobile Num" />
		
	</label>
	<g:textField name="mobileNum" value="${doctorInstance?.mobileNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'telNum', 'error')} ">
	<label for="telNum">
		<g:message code="doctor.telNum.label" default="Tel Num" />
		
	</label>
	<g:textField name="telNum" value="${doctorInstance?.telNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'background', 'error')} required">
	<label for="background">
		<g:message code="doctor.background.label" default="Background" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="background" required="" value="${doctorInstance?.background}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'clinicHourStart', 'error')} required">
	<label for="clinicHourStart">
		<g:message code="doctor.clinicHourStart.label" default="Clinic Hour Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clinicHourStart" required="" value="${doctorInstance?.clinicHourStart}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'clinicHourEnd', 'error')} required">
	<label for="clinicHourEnd">
		<g:message code="doctor.clinicHourEnd.label" default="Clinic Hour End" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clinicHourEnd" required="" value="${doctorInstance?.clinicHourEnd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'rceptionists', 'error')} ">
	<label for="rceptionists">
		<g:message code="doctor.rceptionists.label" default="Rceptionists" />
		
	</label>
	<g:select name="rceptionists" from="${com.itech.membership.Receptionist.list()}" multiple="multiple" optionKey="id" size="5" value="${doctorInstance?.rceptionists*.id}" class="many-to-many"/>
</div>

