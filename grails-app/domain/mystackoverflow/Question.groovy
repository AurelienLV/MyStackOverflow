package mystackoverflow

//Question asked by an user
class Question extends Intervention
{
	int views
	String titleQuestion
	//Many-To-Many relation, One-To-Many relation
	static hasMany = [tags: Tag, answers: Answer]

	static constraints =
	{
		views min: 0
		titleQuestion nullable: false, blank: false, maxSize: 100
	}
}
