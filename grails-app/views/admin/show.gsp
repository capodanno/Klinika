
<%@ page import="com.itech.membership.Admin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-admin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-admin" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list admin">
			
				<g:if test="${adminInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="admin.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${adminInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="admin.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${adminInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="admin.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${adminInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.secQuestion}">
				<li class="fieldcontain">
					<span id="secQuestion-label" class="property-label"><g:message code="admin.secQuestion.label" default="Sec Question" /></span>
					
						<span class="property-value" aria-labelledby="secQuestion-label"><g:fieldValue bean="${adminInstance}" field="secQuestion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.secAnswer}">
				<li class="fieldcontain">
					<span id="secAnswer-label" class="property-label"><g:message code="admin.secAnswer.label" default="Sec Answer" /></span>
					
						<span class="property-value" aria-labelledby="secAnswer-label"><g:fieldValue bean="${adminInstance}" field="secAnswer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="admin.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${adminInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="admin.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${adminInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="admin.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${adminInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.isDeleted}">
				<li class="fieldcontain">
					<span id="isDeleted-label" class="property-label"><g:message code="admin.isDeleted.label" default="Is Deleted" /></span>
					
						<span class="property-value" aria-labelledby="isDeleted-label"><g:formatBoolean boolean="${adminInstance?.isDeleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.isFirstLog}">
				<li class="fieldcontain">
					<span id="isFirstLog-label" class="property-label"><g:message code="admin.isFirstLog.label" default="Is First Log" /></span>
					
						<span class="property-value" aria-labelledby="isFirstLog-label"><g:formatBoolean boolean="${adminInstance?.isFirstLog}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adminInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="admin.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${adminInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${adminInstance?.id}" />
					<g:link class="edit" action="edit" id="${adminInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
