package mystackoverflow

//Instances implemented in the application (not created by an user), cf BootStrap.groovy
//A badge rewards an user for an action
class Badge {

	String name;
	String description;
	//Many-To-Many relation
	static belongsTo = [user: User]
	static hasMany = [users: User]

    static constraints = {
    	name(blank: false, nullable: false, maxLength:30,
    		inList:[message(code:"badge.name.1"), message(code:"badge.name.2"),
    		message(code:"badge.name.3"), message(code:"badge.name.4"), message(code:"badge.name.5")])
    	description(blank: false, nullable: false, maxLength: 100)
    	user(nullable: true)
    }
}
