<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>

    <body>
        <a href="#create-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div class="container">
            <div class="row">
                <div class="span">
					<h1><g:message code="default.create.label.question" args="[entityName]" /></h1>

					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>

					<g:hasErrors bean="${this.question}">
					<ul class="errors" role="alert">
						<g:eachError bean="${this.question}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>

					<g:form action="save">
						<fieldset class="form">
							<table id="userForm">
								<tr>
									<td><label>${message(code: 'question.titleQuestion')}</label></td>
									<td><g:textField maxlength="50" name="titleQuestion" value="${params.titleQuestion}"/></td>
								</tr>
								<tr>
									<td><label>${message(code: 'question.textIntervention')}</label></td>
									<td><g:field maxlength="500" name="textIntervention" value="${params.textIntervention}"/></td>
								</tr>

								<g:hiddenField name="user.id" value="${session.user.id}" />
								<g:hiddenField name="views" value="0" />
							</table>
						</fieldset>

						<fieldset class="buttons">
							<g:submitButton name="create" value="${message(code: 'validate')}" />
						</fieldset>
					</g:form>
				</div>
            </div>
        </div>
    </body>
</html>
