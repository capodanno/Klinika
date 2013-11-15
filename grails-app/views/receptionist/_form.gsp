<%@ page import="com.itech.membership.Receptionist" %>



<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="receptionist.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${receptionistInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="receptionist.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${receptionistInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="receptionist.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${receptionistInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="receptionist.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${receptionistInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="receptionist.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${receptionistInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'mobileNum', 'error')} ">
	<label for="mobileNum">
		<g:message code="receptionist.mobileNum.label" default="Mobile Num" />
		
	</label>
	<g:textField name="mobileNum" value="${receptionistInstance?.mobileNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'telNum', 'error')} ">
	<label for="telNum">
		<g:message code="receptionist.telNum.label" default="Tel Num" />
		
	</label>
	<g:textField name="telNum" value="${receptionistInstance?.telNum}"/>
</div>

