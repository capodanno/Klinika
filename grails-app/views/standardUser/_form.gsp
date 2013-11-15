<%@ page import="com.itech.membership.StandardUser" %>



<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="standardUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${standardUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="standardUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${standardUserInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="standardUser.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${standardUserInstance?.registrationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'secQuestion', 'error')} required">
	<label for="secQuestion">
		<g:message code="standardUser.secQuestion.label" default="Sec Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="secQuestion" from="${enums.SecurityQuestion?.values()}" keys="${enums.SecurityQuestion.values()*.name()}" required="" value="${standardUserInstance?.secQuestion?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'secAnswer', 'error')} required">
	<label for="secAnswer">
		<g:message code="standardUser.secAnswer.label" default="Sec Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="secAnswer" required="" value="${standardUserInstance?.secAnswer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="standardUser.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${standardUserInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="standardUser.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${standardUserInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="standardUser.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${standardUserInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'isDeleted', 'error')} ">
	<label for="isDeleted">
		<g:message code="standardUser.isDeleted.label" default="Is Deleted" />
		
	</label>
	<g:checkBox name="isDeleted" value="${standardUserInstance?.isDeleted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'isFirstLog', 'error')} ">
	<label for="isFirstLog">
		<g:message code="standardUser.isFirstLog.label" default="Is First Log" />
		
	</label>
	<g:checkBox name="isFirstLog" value="${standardUserInstance?.isFirstLog}" />
</div>

<div class="fieldcontain ${hasErrors(bean: standardUserInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="standardUser.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${standardUserInstance?.passwordExpired}" />
</div>

