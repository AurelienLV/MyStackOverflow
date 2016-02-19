<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="title.create.user" /></title>
    </head>

    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div class="container">
            <div class="row">
                <div class="span">
					<h1><g:message code="default.create.label.user" /></h1>

					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>

					<g:hasErrors bean="${this.user}">
					<ul class="errors" role="alert">
						<g:eachError bean="${this.user}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>

					<g:form action="save">
						<fieldset class="form">
							<table id="userForm">
								<tr>
									<td><label>${message(code: 'user.username')}</label></td>
									<td><g:textField maxlength="15" name="username" value="${params.username}"/></td>
								</tr>
								<tr>
									<td><label>${message(code: 'user.password')}</label></td>
									<td><g:field maxlength="20" type="password" name="password" /></td>
								</tr>
								<tr>
									<td><label>${message(code: 'user.confirmPassword')}</label></td>
									<td><g:field maxlength="20" type="password" name="confirmPassword" /></td>
								</tr>
								<tr>
									<td><label>${message(code: 'user.firstname')}</label></td>
									<td><g:textField maxlength="100" name="firstName"  value="${params.firstName}"/></td>
								</tr>
								<tr>
									<td><label>${message(code: 'user.lastname')}</label></td>
									<td><g:textField maxlength="100" name="lastName"  value="${params.lastName}"/></td>
								</tr>
								<tr>
									<td><label>${message(code: 'user.age')}</label></td>
									<td><g:textField maxlength="3" type="number" min="0" name="age"  value="${params.age}"/></td>
								</tr>
								<tr>
									<td><label>${message(code: 'user.email')}</label></td>
									<td><g:field maxlength="20" type="email" name="email"  value="${params.email}"/></td>
								</tr>
							</table>
						</fieldset>

						<fieldset class="buttons">
							<g:submitButton name="create" value="${message(code: 'user.subscribe')}" />
						</fieldset>
					</g:form>
				</div>
            </div>
        </div>
    </body>
</html>
