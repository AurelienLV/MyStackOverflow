package mystackoverflow

//Superclass for Question and Answer
class Intervention
{
	String textIntervention
	Date creationDate
	//One-To-Many relation
	static belongsTo = [user: User]
	//One-To-Many relation
	static hasMany = [votes: Vote, comments: Comment]

    static constraints =
    {
		textIntervention nullable: false, blank: false, maxSize: 1000
		creationDate nullable: false
    }
}
