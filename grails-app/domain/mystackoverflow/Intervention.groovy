package mystackoverflow

//Superclass for Question and Answer
class Intervention
{
	String text
	Date creationDate
	//One-To-Many relation
	static belongsTo = [user: User]
	//One-To-Many relation
	static hasMany = [votes: Vote, comments: Comment]

    static constraints =
    {
		user(nullable: false)
		text(blank: false, nullable: false, maxLength: 1000)
		creationDate(nullable: false)
    }
}
