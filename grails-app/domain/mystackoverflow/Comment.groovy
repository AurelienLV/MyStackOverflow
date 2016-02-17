package mystackoverflow

//Speech for a question or an answer by an user
class Comment
{
	String text
	//One-To-Many relation
	static belongsTo = [user: User, intervention: Intervention]

    static constraints =
    {
		text(blank: false, nullable:false, maxLength: 1000)
		user(nullable: false)
		intervention(nullable: false)
    }
}
