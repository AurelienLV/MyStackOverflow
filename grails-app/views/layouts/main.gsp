<!DOCTYPE html>
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
					</i> <a href="${createLink(uri: '/')}"><div class="title">My StackOverflow</div></a>
				</div>

				<div class="navbar-collapse collapse" aria-expanded="false">
					<ul class="nav navbar-nav navbar-right">
						<!-- IF USER -->
						<g:if test="${session.user}">
							<a class="home" href="${createLink(uri: '/')}">${message(code: 'menu.home')}</a>
							<a href="${createLink(uri: '/user/show/1')}">${message(code: 'menu.myprofile')}</a>
							<a href="${createLink(uri: '/user/index')}">${message(code: 'menu.userlist')}</a>
							<a href="${createLink(uri: '/question/create')}">${message(code: 'menu.newquestion')}</a>
							<a href="#">${message(code: 'menu.myquestions')}</a>
							<a href="${createLink(uri: '/question/index')}">${message(code: 'menu.recentquestions')}</a>
							<a href="#">${message(code: 'menu.qbytag')}</a>
							<a href="#">${message(code: 'menu.myanswers')}</a>
							<a href="#">${message(code: 'menu.recentanswers')}</a>
							<a href="#">${message(code: 'menu.bestratedanswer')}</a>
							<a href="${createLink(uri: '/user/logout')}">${message(code: 'menu.logout')}</a>
						</g:if>

						<g:else>
							<a href="${createLink(uri: '/user/create')}">${message(code: 'menu.signup')}</a>
							<a href="${createLink(uri: '/user/login')}">${message(code: 'menu.login')}</a>
						</g:else>
					</ul>
				</div>
			</div>

			<div class="nav nav-menu" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}">${message(code: 'menu.home')}</a></li>

					<!-- IF USER -->
					<g:if test="${session.user}">
						<li><a>${message(code: 'menu.users')}</a>
							<ul>
								<li><a href="${createLink(uri: '/user/show/1')}">${message(code: 'menu.myprofile')}</a></li>
								<li><a href="${createLink(uri: '/user/index')}">${message(code: 'menu.userlist')}</a></li>
							</ul>
						</li>

						<li><a>${message(code: 'menu.questions')}</a>
							<ul>
								<li><a href="${createLink(uri: '/question/create')}">${message(code: 'menu.newquestion')}</a></li>
								<li><a href="#">${message(code: 'menu.myquestions')}</a></li>
								<li><a href="${createLink(uri: '/question/index')}">${message(code: 'menu.recentquestions')}</a></li>
								<li><a href="#">${message(code: 'menu.qbytag')}</a></li>
							</ul>
						</li>

						<li><a>${message(code: 'menu.answers')}</a>
							<ul>
								<li><a href="#">${message(code: 'menu.myanswers')}</a></li>
								<li><a href="${createLink(uri: '/answer/index')}">${message(code: 'menu.recentanswers')}</a></li>
								<li><a href="#">${message(code: 'menu.bestratedanswer')}</a></li>
							</ul>
						</li>

						<li><a href="${createLink(uri: '/user/logout')}">${message(code: 'menu.logout')}</a></li>
					</g:if>

					<g:else>
						<li><a href="${createLink(uri: '/user/create')}">${message(code: 'menu.signup')}</a></li>
						<li><a href="${createLink(uri: '/user/login')}">${message(code: 'menu.login')}</a></li>
					</g:else>
				</ul>
			</div>
		</div>
		</div>
		</div>
		<g:layoutBody/>

		<div class="footer" role="contentinfo">
			   <a href="${message(code: 'lang.url')}">${message(code: 'lang.change')}</a>
		</div>

		<div id="spinner" class="spinner" style="display:none;">
			   <a href="${message(code: 'lang.url')}">${message(code: 'lang.change')}</a>
			<g:message code="spinner.alt" default="Loading&hellip;"/>
		</div>
		<br /><br /><br /><br />

		<asset:javascript src="application.js"/>
	</body>
</html>
