package mystackoverflow

//User who uses the application
class User
{
	String username
	String password
	String firstName
	String lastName
	String email
    String confirmPassword
	Date creationDate
	int age
	int reputation
	boolean admin
	//One-To-Many relation, badges: Many-To-Many relation
	static hasMany = [answers: Answer, questions: Question, comments: Comment, badges: Badge]

	static constraints =
	{
		username nullable: false, blank: false, unique: true, size: 5..15, matches:/[a-zA-Z0-9]+/
		password nullable: false, blank: false, size: 5..20
		firstName nullable: false, blank: false, maxSize: 100
		lastName nullable: false, blank: false, maxSize: 100
		email nullable: false, email: true, blank: false, maxSize: 200
        confirmPassword nullable: false, blank: false, validator: { val, object ->
            if ((val != object.password)) {
                return 'passwordMismatch'
            }
            return true
        }
		age nullable: false, min:12
		reputation nullable: false
        creationDate nullable: false
		admin nullable:false
	}

    User() {
        creationDate = new Date()
    }
}
