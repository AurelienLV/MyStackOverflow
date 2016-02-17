package mystackoverflow

//Upvote or downvote by an user to a question
class Vote
{
	//Up is true, down is false
	boolean vote
	//One-To-Many relation
	static belongsTo = [user: User, intervention: Intervention]

	static constraints =
	{
		vote(nullable: false) //le vote n'existe pas/plus s'il est annulé
		user(nullable: false)
		intervention(nullable: false)
	}
}
