
<%@ page import="com.itech.membership.Receptionist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receptionist.label', default: 'Receptionist')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receptionist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receptionist" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receptionist">
			
				<g:if test="${receptionistInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="receptionist.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${receptionistInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="receptionist.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${receptionistInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="receptionist.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${receptionistInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="receptionist.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${receptionistInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="receptionist.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${receptionistInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.mobileNum}">
				<li class="fieldcontain">
					<span id="mobileNum-label" class="property-label"><g:message code="receptionist.mobileNum.label" default="Mobile Num" /></span>
					
						<span class="property-value" aria-labelledby="mobileNum-label"><g:fieldValue bean="${receptionistInstance}" field="mobileNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.telNum}">
				<li class="fieldcontain">
					<span id="telNum-label" class="property-label"><g:message code="receptionist.telNum.label" default="Tel Num" /></span>
					
						<span class="property-value" aria-labelledby="telNum-label"><g:fieldValue bean="${receptionistInstance}" field="telNum"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${receptionistInstance?.id}" />
					<g:link class="edit" action="edit" id="${receptionistInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
