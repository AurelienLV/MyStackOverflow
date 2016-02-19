package mystackoverflow

class AuthenticateInterceptor {

    AuthenticateInterceptor() {
        match(controller:"question", action:"create")
        match(controller:"question", action:"edit")
        match(controller:"user", action:"edit")
    }

    boolean before() {
        if (!session.user && !actionName.equals('login')) {
            redirect(controller: "User", action: "login")
            return false
        }
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
