
<%@ page import="com.itech.membership.StandardUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-standardUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-standardUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'standardUser.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'standardUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="registrationDate" title="${message(code: 'standardUser.registrationDate.label', default: 'Registration Date')}" />
					
						<g:sortableColumn property="secQuestion" title="${message(code: 'standardUser.secQuestion.label', default: 'Sec Question')}" />
					
						<g:sortableColumn property="secAnswer" title="${message(code: 'standardUser.secAnswer.label', default: 'Sec Answer')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'standardUser.accountExpired.label', default: 'Account Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${standardUserInstanceList}" status="i" var="standardUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${standardUserInstance.id}">${fieldValue(bean: standardUserInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "password")}</td>
					
						<td><g:formatDate date="${standardUserInstance.registrationDate}" /></td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "secQuestion")}</td>
					
						<td>${fieldValue(bean: standardUserInstance, field: "secAnswer")}</td>
					
						<td><g:formatBoolean boolean="${standardUserInstance.accountExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${standardUserInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
