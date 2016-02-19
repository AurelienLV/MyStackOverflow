import mystackoverflow.User

class BootStrap {

    def init = { servletContext ->
        def admin = User.findByUsername("Admin")

        if (admin == null) {
            //new User(username:'Admin', password:'admin', firstName:'Admin', lastName:'Admin',
            //         email:'admin@mystackoverflow.fr', confirmPassword:'admin', creationDate:new Date(),
            //         age: 100, reputation:0, admin:true).save(failOnError: true)
        }
    }

    def destroy = {
    }
}
