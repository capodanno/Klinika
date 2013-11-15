<%@ page import="com.itech.membership.Admin" %>



<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="admin.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${adminInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="admin.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${adminInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="admin.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${adminInstance?.registrationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'secQuestion', 'error')} required">
	<label for="secQuestion">
		<g:message code="admin.secQuestion.label" default="Sec Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="secQuestion" from="${enums.SecurityQuestion?.values()}" keys="${enums.SecurityQuestion.values()*.name()}" required="" value="${adminInstance?.secQuestion?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'secAnswer', 'error')} required">
	<label for="secAnswer">
		<g:message code="admin.secAnswer.label" default="Sec Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="secAnswer" required="" value="${adminInstance?.secAnswer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="admin.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${adminInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="admin.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${adminInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="admin.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${adminInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'isDeleted', 'error')} ">
	<label for="isDeleted">
		<g:message code="admin.isDeleted.label" default="Is Deleted" />
		
	</label>
	<g:checkBox name="isDeleted" value="${adminInstance?.isDeleted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'isFirstLog', 'error')} ">
	<label for="isFirstLog">
		<g:message code="admin.isFirstLog.label" default="Is First Log" />
		
	</label>
	<g:checkBox name="isFirstLog" value="${adminInstance?.isFirstLog}" />
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="admin.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${adminInstance?.passwordExpired}" />
</div>

