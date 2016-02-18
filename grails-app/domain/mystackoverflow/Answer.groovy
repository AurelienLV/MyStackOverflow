package mystackoverflow

//Answer for a question by an user
class Answer extends Intervention
{
	static belongsTo = [question: Question]

	static constraints =
	{
	}
}
