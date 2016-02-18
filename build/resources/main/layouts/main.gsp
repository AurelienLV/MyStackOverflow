<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>
    <div class="header">
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <i class="fa grails-icon">
                </i> <div class="title"><a href="${createLink(uri: '/')}">My StackOverflow</a></div>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                   <a class="home" href="${createLink(uri: '/')}">Home</a>
                   <a href="#">My profile</a>
                   <a href="#">User list</a>
                   <a href="#">My questions</a>
                   <a href="#">Recent questions</a>
                   <a href="#">Questions by tag</a>
                   <a href="#">My answers</a>
                   <a href="#">Recent answers</a>
                   <a href="#">Best rated answer</a>
                </ul>
            </div>
        </div>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Home</a></li>

                <li><a>Users</a>
                    <ul>
                        <li><a href="#">My profile</a></li>
                        <li><a href="#">User list</a></li>
                    </ul>
                </li>

                <li><a>Questions</a>
                    <ul>
                        <li><a href="#">My questions</a></li>
                        <li><a href="#">Recent questions</a></li>
                        <li><a href="#">Questions by tag</a></li>
                    </ul>
                </li>

                <li><a>Answer</a>
                    <ul>
                        <li><a href="#">My answers</a></li>
                        <li><a href="#">Recent answers</a></li>
                        <li><a href="#">Best rated answer</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
    </div>
    </div>
    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
