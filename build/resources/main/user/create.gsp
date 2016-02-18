<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="title.create.user" /></title>
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
                    <label>${message(code: 'user.username')}</label>
                    <g:textField maxlength="15" name="username" value="${params.username}"/><br />
                    <label>${message(code: 'user.password')}</label>
                    <g:field maxlength="20" type="password" name="password" /><br />
                    <label>${message(code: 'user.confirmPassword')}</label>
                    <g:field maxlength="20" type="password" name="confirmPassword" /><br />
                    <label>${message(code: 'user.firstname')}</label>
                    <g:textField maxlength="100" name="firstName"  value="${params.firstName}"/><br />
                    <label>${message(code: 'user.lastname')}</label>
                    <g:textField maxlength="100" name="lastName"  value="${params.lastName}"/><br />
                    <label>${message(code: 'user.age')}</label>
                    <g:textField maxlength="3" type="number" min="0" name="age"  value="${params.age}"/><br />
                    <label>${message(code: 'user.email')}</label>
                    <g:field maxlength="20" type="email" name="email"  value="${params.email}"/><br />
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'user.subscribe')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
