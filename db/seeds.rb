#first remove all data from database
Project.delete_all



#then define static data and fill database
projects = {

	"PyChat Room" => [
		true,
	 "A chat room program that features multiple client chat rooms."
	 ],

	"Java Compiler" => [
		true,
	"Java compiler and jvm clone with simple debug mode, implemented using Java."
	],

	"Apartment Rental Website" => [
		false,
	"Fullstack nodeJS Express and React app. Website for finding local apartments with registration and easy contacting system."
	],

	"Big Data Project" => [
		false,
	"Web app that utilizes the Socrata Open Data API, to provide powerful services to client",
	]
}


projects.each{ |title,data|
  Project.create!(:title=>title,:completed=>data[0],:description=>data[1])
}




