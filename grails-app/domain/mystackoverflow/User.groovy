package mystackoverflow

//User who uses the application
class User
{
	String username
	String password
	String firstName
	String lastName
	String email
	Date creationDate
	int age
	int reputation
	//One-To-Many relation, badges: Many-To-Many relation
	static hasMany = [answers: Answer, questions: Question, comments: Comment, badges: Badge]

	static constraints =
	{
		username(blank: false, nullable: false, unique: true, length: 5..15, matches:/[a-zA-Z]/)
		password(blank: false, nullable: false, length: 6..20)
		firstName(blank: false, nullable: false, maxLength: 100)
		lastName(blank: false, nullable: false, maxLength: 100)
		email(email: true, blank: false, nullable: false, maxLength: 100)
		creationDate(nullable: false)
		age(nullable: false, min:12)
		reputation(nullable: false)
	}
}
