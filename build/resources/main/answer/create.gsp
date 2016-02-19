<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-answer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="create-answer" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.answer}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.answer}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form action="save">
                <fieldset class="form">
					<table id="AnswerForm">
						<tr>
							<td><label>${message(code: 'answer.textIntervention')}</label></td>
							<td><g:textField maxlength="500" name="textIntervention" value="${params.textIntervention}"/></td>
						</tr>
					</table>
                </fieldset>

<!-- Mettre à jour creationDate et User-->

                <fieldset class="buttons">
                    <g:submitButton name="create" value="${message(code: 'answer.create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
