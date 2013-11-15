
<%@ page import="com.itech.membership.StandardUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-standardUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-standardUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list standardUser">
			
				<g:if test="${standardUserInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="standardUser.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${standardUserInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="standardUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${standardUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="standardUser.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${standardUserInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.secQuestion}">
				<li class="fieldcontain">
					<span id="secQuestion-label" class="property-label"><g:message code="standardUser.secQuestion.label" default="Sec Question" /></span>
					
						<span class="property-value" aria-labelledby="secQuestion-label"><g:fieldValue bean="${standardUserInstance}" field="secQuestion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.secAnswer}">
				<li class="fieldcontain">
					<span id="secAnswer-label" class="property-label"><g:message code="standardUser.secAnswer.label" default="Sec Answer" /></span>
					
						<span class="property-value" aria-labelledby="secAnswer-label"><g:fieldValue bean="${standardUserInstance}" field="secAnswer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="standardUser.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${standardUserInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="standardUser.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${standardUserInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="standardUser.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${standardUserInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.isDeleted}">
				<li class="fieldcontain">
					<span id="isDeleted-label" class="property-label"><g:message code="standardUser.isDeleted.label" default="Is Deleted" /></span>
					
						<span class="property-value" aria-labelledby="isDeleted-label"><g:formatBoolean boolean="${standardUserInstance?.isDeleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.isFirstLog}">
				<li class="fieldcontain">
					<span id="isFirstLog-label" class="property-label"><g:message code="standardUser.isFirstLog.label" default="Is First Log" /></span>
					
						<span class="property-value" aria-labelledby="isFirstLog-label"><g:formatBoolean boolean="${standardUserInstance?.isFirstLog}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${standardUserInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="standardUser.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${standardUserInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${standardUserInstance?.id}" />
					<g:link class="edit" action="edit" id="${standardUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
