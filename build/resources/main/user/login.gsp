<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="title.login" /></title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="span">
                    <h2>${message(code: 'login.authentification')}</h2>

                    <form method='post' action='login'>
                        <input type='text' name='username'/><br/>
                        <input type='password' name='password'/><br/>
                        <input type='submit' name='auth' value="${message(code: 'login.login')}"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>