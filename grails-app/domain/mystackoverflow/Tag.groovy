package mystackoverflow

//Keyword for a question
class Tag
{
	String description
	//Many-To-Many relation
	static hasMany = [questions: Question]
	static belongsTo = [question: Question]
	
	static constraints =
	{
		description(blank: false, nullable: false, maxLength: 1000)
		question(nullable: false)
	}
}
