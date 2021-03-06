<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="show-question" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <f:display bean="question" />
            <g:link controller="comment" action="create" id="${question.id}">${message(code:'comment')}</g:link>
            <g:link controller="answer" action="create" id="${question.id}">${message(code:'answer')}</g:link>

            <g:each var="comment" in="${question.comments}">
                <p>${comment.textComment}</p>
            </g:each>

            <g:each var="answer" in="${question.answers}">
                <p>${answer.textIntervention}</p>
                <p>${answer.creationDate}</p>
                <p>${answer.user}</p>
                <p>${answer.votes.count}</p>

                <g:each var="comment" in="${answer.comments}">
                    <p>${comment.textComment}</p>
                </g:each>
            </g:each>

            <g:form resource="${this.question}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.question}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
