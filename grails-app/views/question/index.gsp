<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="list-question" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div style="overflow-x:auto;">
				<f:table collection="${listQByDate}" properties="['titleQuestion', 'views', 'tags', 'creationDate']"/>
			</div>

            <div class="pagination">
                <g:paginate total="${questionCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
