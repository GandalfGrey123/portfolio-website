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

  args[6].each do |next_tech|
  	project.tags.create!(
  		:tagName => next_tech[0],
  		:resourceLink => next_tech[1],
  		:resourceImage => next_tech[2],
  	)
  end


 args[7].each do |next_tech|
  	project.contributors.create!(
  		:contributorName => next_tech[0],
  		:contributorProfileLink => next_tech[1],
  	)

  end

end



def run_seed 
	Link.delete_all
	Contributor.delete_all
	Tag.delete_all
	Picture.delete_all
 	Project.delete_all 	
 	Message.delete_all



 	create_project([
 		true,
 		"Apartment Rental Website - 2019",		
		"Fullstack nodeJS Express and React app",
		"
		 I worked as a Fullstack team lead to develop the apartment rental website GatorRooms. 
		 This website was developed to aid SFSU students during the school semester in finding affordable housing.
		 This application was deployed to a EC2 AWS Linux server configured to run NodeJS and MySQL applications
		 We setup a relational database with MySQL to represent our website data sets. 
		 Users were able to signup, access their dashboard and create apartment listing posts on our website.
		 The website has a direct chat messaging system that quickly connects student users to the landlord for individual apartment listings.
		 The user dashboard can be used to display all listings made by a user and all messages made to a landlord.
		 ReactJS was used as our frontend framework because it's simple single page architecture made our simple project code highly maintainable.		 
		 ",
 		[ 
 		  ["https://github.com/GandalfGrey123/project-apartment-rental","Github repo - GatorRooms"],
		  ["https://youtu.be/-Esn45J1gIM","Youtube page - GatorRooms Demo"],
		  ["https://github.com/GandalfGrey123/project-apartment-rental/blob/master/Milestones/M5/csc648doc.pdf","Project Documentation"]
		],
		[

		],
		[
		 ["NodeJS 10.16.0","https://nodejs.org/en/","https://cdn4.iconfinder.com/data/icons/logos-3/456/nodejs-new-pantone-black-512.png"],
		 ["ReactJS ","https://reactjs.org","https://cdn2.iconfinder.com/data/icons/designer-skills/128/react-512.png"],
		 ["MySQL 5.7","https://dev.mysql.com/doc/relnotes/mysql/5.7/en/",""],
		 ["ExpressJS","https://expressjs.com",""],
		 ["Sequelize ORM","http://docs.sequelizejs.com",""],
		 ["Material UI","https://material-ui.com",""],
		 ["AWS","https://aws.amazon.com",""],
		],
		[
		 ["Alex Sergeev"  , "https://www.linkedin.com/in/alex-sergeev-45a045116"],
		 [ "Inez Wibowo" , "https://github.com/inezwibs"],
		 [ "Marcus Wong" , "https://github.com/GandalfGrey123"],
		 [ "Hang Li" , "#"],
		 [ "Jia Nan Mai" , "#"],
		 [ "Romeel Chaudhari" , "#"],
		 [ "Ismael San Juan" , "#"],
		]
	])

 	create_project([
 		true,
 		"PyChat Room - 2019",  	
 		"A command line web chat interface created with Python3",
 		" 
 		 I created a web chat program that you can simply use with your devices' command line interface. 
 		 This was a two week quick school project that I turned into my own personal project. 
 		 This program simply uses Python3 only and installation only requires installing Python3.
 		 From your computer terminal you can connect to the chat server and begin creating chat rooms with other user and sending inbox messages.
 		 The chat server implments asynchronous IO using the Python3 select module on the socket connections.
 		 Python3's select module is compatiable with most operating systems such as Unix, Linux 2.5+ and even Windows for socket IO streams.
 		 Subprocessing was an essential utility in the backend server and was used to implement simultaneous chat rooms with multiple users.
 		",
 		[ 
 		  ["https://github.com/GandalfGrey123/py-chat-room","Github repo - PyChat Program"],
		  ["https://www.youtube.com/watch?v=sMmpfk4xrHU","Youtube page - PyChat Video Demo"],
		],

		[
		  
		],
		[
		  ["Python3","https://docs.python.org/3/",""],
		  ["socket module","https://docs.python.org/3/library/socket.html",""],
		  ["select module","https://docs.python.org/3/library/select.html",""],
		  ["subprocess module","https://docs.python.org/3/library/subprocess.html",""],		  		  
		],
		[
		 [ "Marcus Wong" , "https://github.com/GandalfGrey123"],
		],

 	])

 	create_project([
 		true,
 		"Java Compiler - Spring 2016",  	
 		"Java compiler and JVM clone with simple debug mode option created with Java",
 		"Summary: \nFully functional compiler for a simple source code language we named X. The compiler can be ran in the command line given a target source file path with command options for debug mode. \nDesign Patterns: \nThis project design leveraged many OOP design patterns to simplfy code and have organized development. \n Interpreter - For the interpreter we simply built a set of ByteCode classes by extending an abstract ByteCode class with an execute method. A runtime stack was used to handle the byte code execution which were loaded into the VM using Java reflection. \n AST - We combined double dispatch with the visitor design pattern to build and validate the Abstract Syntax Tree using predefined grammar rules for our made up language named 'X'. \nContributions: \nMy part of this project was to define new syntax rules for the compiler and implement the bytecode loader, source code tokenizer and the interpreter with a debug mode option",

 		[ 
 		  ["https://github.com/GandalfGrey123/compiler","Github repo - Java Compiler"],		  
		],
		[
		  
		],
		[
		  
		],
		[
		  
		]
 	])


	create_project([
		false,
 		"SF Artist Event Mapper",		
		"Full stack nodeJs Electron with React app. Website for coordinating grocery and meal plans",
		"Summary: \nDesktop application built with Github's ElectronJS framework. This application was designed to help organize meal planning coordinating with your grocery shopping lists. Use the app to create shopping lists and strategies for daily or weekly meal plans that you can reuse over and over. This application will also help remember the previous recipes you've enjoyed so you wont have such a hard time thinking of what to make for dinner or lunch. \n Framework: \n Backend frameworks include ExpressJS and MongoDB with the Mongoose ODM to implement data mapping. Frontend tools include ElectronJS with BootStrap 5.0",
 		[ 
 		  ["https://electronjs.org","ElectronJS Docs"],
 		  ["https://github.com/GandalfGrey123/grocery-guy","Github repo - Grocery Guy"],		  
		],
		[
		  
		],
		[
		  
		],
		[
		  
		]
	])


	create_project([
		false,
		"Big Data Project",
		"Web app that utilizes the Socrata Open Data API to provide powerful services to client that help with everyday activities",
		"Project Overview: \nDownload this app to effortless avoid street cleaning parking tickets at any arbitrary location in San Francisco. User devices will have direct access to the powerful resources provided by the Socrata Open Data API. Along with the HTML Geolocation API along the app will provide useful services like detecting street cleaning ticket risk based on current location. \nIntended Design/Tools: \nNodeJS \nBuild REST API with ExpressJS \nHTML5 Geolocation 5 \nSocrata Open Data API",
 		[  
		  ["https://dev.socrata.com/data/","Socrata Dev API"],
		],
		[
		  
		],
		[
		  
		],
		[
		  
		]
	])


	create_project([
		false,
 		"Electron Grocery App",		
		"Full stack nodeJs Electron with React app. Website for coordinating grocery and meal plans",
		"Summary: \nDesktop application built with Github's ElectronJS framework. This application was designed to help organize meal planning coordinating with your grocery shopping lists. Use the app to create shopping lists and strategies for daily or weekly meal plans that you can reuse over and over. This application will also help remember the previous recipes you've enjoyed so you wont have such a hard time thinking of what to make for dinner or lunch. \n Framework: \n Backend frameworks include ExpressJS and MongoDB with the Mongoose ODM to implement data mapping. Frontend tools include ElectronJS with BootStrap 5.0",
 		[ 
 		  ["https://electronjs.org","ElectronJS Docs"],
 		  ["https://github.com/GandalfGrey123/grocery-guy","Github repo - Grocery Guy"],		  
		],
		[
		  
		],
		[
		  
		],
		[
		  
		]
	])

  
end

run_seed