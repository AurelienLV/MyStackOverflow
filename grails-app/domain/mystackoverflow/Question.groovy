package mystackoverflow

//Question asked by an user
class Question extends Intervention
{
	int views
	String title
	//Many-To-Many relation, One-To-Many relation
	static hasMany = [tags: Tag, answers: Answer]

	static constraints =
	{
		views(min: 0)
		title(blank: false, maxLength: 100)
	}
}
