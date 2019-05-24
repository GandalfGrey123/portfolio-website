def create_project args

  project = Project.create!(
  	 :completed=>args[0],
 	 :title=>args[1], 	 
 	 :description=>args[2],
 	 :designSummary=>args[3],
  )

  args[4].each do |next_link|
  	project.links.create!(
  		:linkUrl=> next_link[0],
  		:linkName=> next_link[1],
  	)	
  end

  args[5].each do |file_name|
  	project.pictures.create!(
  		:data => file_name
  	)
  end

end



def run_seed 
	Link.delete_all
 	Project.delete_all
 	Picture.delete_all

 	create_project([
 		true,
 		"PyChat Room",  	
 		"A chat room program that features multiple client chat rooms.",
 		"Summary: \nThis program was created for users to communicate through internet connection. Users shall be able to create their own chat rooms as well as join others. The goal was to connect multiple users at the same time through chat rooms. The main responsiblities of the server are to handle requests for new chat rooms and incoming messages. \n Tools: \n \tAll connections made to the server were handled using TCP sockets and client requests were monitored using the Python select module.",
 		[ 
 		  ["https://github.com/GandalfGrey123/py-chat-room","Github repo - PyChat Program"],
		  ["https://www.youtube.com/watch?v=sMmpfk4xrHU","Youtube page - PyChat Video Demo"],
		],
		[
		  "chat1.png",
		  "chat3.png"

		]
 	])

 	create_project([
 		true,
 		"Java Compiler",  	
 		"Java compiler and JVM clone with simple debug mode option, implemented using Java.",
 		"Summary: \nFully functional compiler for a simple source code language we named X. The compiler can be ran in the command line given a target source file path with command options for debug mode. \nDesign Patterns: \nThis project design leveraged many OOP design patterns to simplfy code and have organized development. \n Interpreter - For the interpreter we simply built a set of ByteCode classes by extending an abstract ByteCode class with an execute method. A runtime stack was used to handle the byte code execution which were loaded into the VM using Java reflection. \n AST - We combined double dispatch with the visitor design pattern to build and validate the Abstract Syntax Tree using predefined grammar rules for our made up language named 'X'. \nContributions: \nMy part of this project was to define new syntax rules for the compiler, create the interpreter with a debug mode option",

 		[ 
 		  ["https://github.com/GandalfGrey123/compiler","Github repo - Java Compiler"],		  
		],
		[
		  "chat1.png"
		]
 	])

 	create_project([
 		true,
 		"Apartment Rental Website",		
		"Fullstack nodeJS Express and React app. Website for finding local apartments with registration and easy contacting system.",
		"Summary: \nWeb app designed for college students in need of housing. We created this web app to make it easy the process of renting an apartment very simple and quick. \nTools / FrameWorks: \nThis is a fullstack nodeJS application that was deployed to an AWS ec2 instance. For our back end framework and tools we used Express with MySQL and the Sequelize ORM to implement data mapping design. For our front end code we used ReactJs with Google's React library, Material UI. \nMy Contribution: \nDuring this project I acted as one of the main Github masters and did pull request review. My main role in this project was working as a backend and frontend coder. The features that I contributed most to was the direct chat messaging system, new listing page and login with authentication",
 		[ 
 		  ["https://github.com/GandalfGrey123/project-apartment-rental","Github repo - GatorRooms"],
		  ["https://youtu.be/-Esn45J1gIM","Youtube page - GatorRooms Demo"],
		  ["https://github.com/GandalfGrey123/project-apartment-rental/blob/master/Milestones/M5/csc648doc.pdf","Project Documentation"]
		],
		[
		  "chat1.png"
		]
	])

	create_project([
		false,
 		"Electron Grocery App",		
		"Full stack nodeJs Electron with React app. Website for coordinating grocery and meal plans",
		"Summary: \nDesktop application built with Github's ElectronJS framework. This application was designed to help organize coordinating meal planning and your grocery shopping lists. Use the app to create shopping list and strategies for daily or weekly meal plans. This application will also help remember the previous recipes you've enjoyed so you wont have such a hard time thinking of what to make for dinner or lunch. \n Framework: \n Backend frame work uses Express and MongoDB with the Mongoose ODM to implmenet data mapping. Frontend tools include ElectronJS with BootStrap 5.0",
 		[ 
 		  ["https://github.com/GandalfGrey123/grocery-guy","Github repo - Grocery Guy"],		  
		],
		[
		  "chat1.png"
		]
	])

	create_project([
		false,
		"Big Data Project",
		"Web app that utilizes the Socrata Open Data API to provide powerful services to client that help with everyday activities",
		"Project Overview: \nDownload this app to effortless avoid street cleaning parking tickets at any arbitrary location in San Francisco. User devices will have direct access to the powerful resources provided by the Socrata Open Data API. Along with the HTML Geolocation API along the app will provide useful services like detecting street cleaning ticket risk based on current location. \nIntended Design/Tools: \n Build REST API \nHTML5 Geolocation 5 \nSocrata Open Data API \nREST API built with ExpressJS",
 		[  		  
		  ["https://dev.socrata.com/data/","Socrata Dev API"],
		],
		[
		  "chat1.png"
		]
	])
  
end


run_seed