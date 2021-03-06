<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="create-comment" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.comment}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.comment}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form action="save">
                <fieldset class="form">
					<table id="CommentForm">
						<tr>
							<td><label>${message(code: 'comment.textComment')}</label></td>
							<td><g:textField maxlength="500" name="textComment" value="${params.textComment}"/></td>
                            <g:hiddenField name="user.id" value="${session.user.id}" />
                            <g:hiddenField name="intervention.id" value="${params.id}" />
						</tr>
					</table>
                </fieldset>

<!-- Mettre à jour creationDate et User et Intervention-->

                <fieldset class="buttons">
                    <g:submitButton name="create" value="${message(code: 'comment.create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
