import mystackoverflow.*

class BootStrap {

    def init = { servletContext ->
        def admin = User.findByUsername("Admin")

        if (admin == null) {
            admin = new User(username:"Admin", password:"admin", firstName:"Admin", lastName:"Admin",
                    email:"admin@mystackoverflow.fr", confirmPassword:"admin",
                    age: 100, reputation:0, admin:true)
            admin.save(failOnError: true)
        }
    }

    def destroy = {
    }
}