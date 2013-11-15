
<%@ page import="com.itech.membership.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctor">
			
				<g:if test="${doctorInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="doctor.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${doctorInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="doctor.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${doctorInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="doctor.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${doctorInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="doctor.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${doctorInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="doctor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${doctorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.mobileNum}">
				<li class="fieldcontain">
					<span id="mobileNum-label" class="property-label"><g:message code="doctor.mobileNum.label" default="Mobile Num" /></span>
					
						<span class="property-value" aria-labelledby="mobileNum-label"><g:fieldValue bean="${doctorInstance}" field="mobileNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.telNum}">
				<li class="fieldcontain">
					<span id="telNum-label" class="property-label"><g:message code="doctor.telNum.label" default="Tel Num" /></span>
					
						<span class="property-value" aria-labelledby="telNum-label"><g:fieldValue bean="${doctorInstance}" field="telNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.background}">
				<li class="fieldcontain">
					<span id="background-label" class="property-label"><g:message code="doctor.background.label" default="Background" /></span>
					
						<span class="property-value" aria-labelledby="background-label"><g:fieldValue bean="${doctorInstance}" field="background"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.clinicHourStart}">
				<li class="fieldcontain">
					<span id="clinicHourStart-label" class="property-label"><g:message code="doctor.clinicHourStart.label" default="Clinic Hour Start" /></span>
					
						<span class="property-value" aria-labelledby="clinicHourStart-label"><g:fieldValue bean="${doctorInstance}" field="clinicHourStart"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.clinicHourEnd}">
				<li class="fieldcontain">
					<span id="clinicHourEnd-label" class="property-label"><g:message code="doctor.clinicHourEnd.label" default="Clinic Hour End" /></span>
					
						<span class="property-value" aria-labelledby="clinicHourEnd-label"><g:fieldValue bean="${doctorInstance}" field="clinicHourEnd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.rceptionists}">
				<li class="fieldcontain">
					<span id="rceptionists-label" class="property-label"><g:message code="doctor.rceptionists.label" default="Rceptionists" /></span>
					
						<g:each in="${doctorInstance.rceptionists}" var="r">
						<span class="property-value" aria-labelledby="rceptionists-label"><g:link controller="receptionist" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${doctorInstance?.id}" />
					<g:link class="edit" action="edit" id="${doctorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
