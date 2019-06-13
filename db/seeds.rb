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
 		"Java compiler and JVM clone with simple debug mode option, implemented with Java",
 		"
 		 A fully functional Java code compiler and JVM clone implemented with Java. 
 		 This compiler compiles source code from our basic programming language called X.
 		 I contributed to this project by implement new syntax and grammar rules for the language. 
 		 I developed the virtual machine and interpreter, the byte code executed by the interpreter.
 		 Our X programming language featured standard data types, function and conditional block code, standard operators and also debugging mode with stepping function. 		 
 		",

 		[ 
 		  ["https://github.com/GandalfGrey123/compiler","Github repo - Java Compiler"],		  
 		  ["https://github.com/GandalfGrey123/compiler/blob/master/CourseReader413.pdf","Documentation - Program Design "],		  
		],

		[

		],

		[
		  ["Java 7.0","https://www.java.com/en/download/faq/release_dates.xml",""],
		  ["Java Swing","https://docs.oracle.com/javase/7/docs/api/javax/swing/package-summary.html",""],
		  ["Netbeans IDE","https://netbeans.org",""],
		],

		[
		  [ "Marcus Wong","https://github.com/GandalfGrey123"],
		  [ "Dr. Barry Levine","http://unixlab.sfsu.edu/~levine/"],		  
		]
 	])


	create_project([
		false,
 		"SF Artist Event Mapper",		
		"Website for local San Francisco Art events",
		"
		 I am currently working on a website to connect San Francisco artists to local art events. 
		 Using the website map provided by the Google Maps API, artist will be able to easily and quickly find upcoming and current art events in San Francisco or based on their location.
		 I am working with local artists from the community to develop this website into a desireable web application. 
		 A prototype will be built for this project and presented to artist users for feedback.
		",

 		[  				 
		],
		
		[],

		[	
		 ["NodeJS 10.16.0","https://nodejs.org/en/","https://cdn4.iconfinder.com/data/icons/logos-3/456/nodejs-new-pantone-black-512.png"],
		 ["ReactJS ","https://reactjs.org","https://cdn2.iconfinder.com/data/icons/designer-skills/128/react-512.png"],
		 ["MySQL","https://dev.mysql.com/doc/relnotes/mysql/5.7/en/",""],
		 ["ExpressJS","https://expressjs.com",""],
		 ["Sequelize ORM","http://docs.sequelizejs.com",""],
		 ["React-BootStrap","https://react-bootstrap.github.io",""],			    
		 ["Google Cloud","https://cloud.google.com",""],			    		
		],

		[
		  ["Marcus Wong","https://github.com/GandalfGrey123"],
		]
	])


	create_project([
		false,
		"Big Data Project",
		"Criminal Activity Mapper",
		"
		Currently designing a web app using the Socrata Open Data API and Google Map Javascript API.
		This website will be used to detect recent up to date criminal activity within a resizeable radius based on the user's location.
		The Socrata open data API datasets include city data updated everyday which will be available in the application. 
		Users will be able to immediately open the application and view the most current criminal city data. 
		This project is still in early development and the intended technology stack is provided within the project Technology Stack detail list.
		",

 		[  		  
		],
		[		  
		],
		
		[ 
		  ["NodeJS 10.16.0","https://nodejs.org/en/",""],
		  ["Socrata Dev API","https://dev.socrata.com/data/"],
		  ["Google Maps API","https://developers.google.com/maps/documentation/"],
		  ["in progress..","#"]

		],
		[
		  ["Marcus Wong","https://github.com/GandalfGrey123"],
		]
	])


	create_project([
		false,
 		"Electron Grocery App",		
		"Full stack NodeJS app using ElectronJS with ReactJS. Website for coordinating grocery lists and meal plans",
		"I started this application as a personal desktop application. 
		 I am creating this application to support organized grocery shopping and to build resuseable archived recipes.
		 ",
 		[ 
 		  ["https://github.com/GandalfGrey123/grocery-guy","Github repo - Grocery Guy"],		  
		],
		[],

		[ 
		  ["NodeJS 10.16.0","https://nodejs.org/en/",""],
		  ["ExpressJS","https://expressjs.com",""],
		  ["MongoDB","https://www.mongodb.com",""],
		  ["Mongoose 5.5 ODM","https://mongoosejs.com",""],
		  ["ElectronJS","https://electronjs.org",""],
		  ["ReactJS","https://reactjs.org",""],
		  ["React-BootStrap","https://react-bootstrap.github.io",""],  
		],
		[
		  ["Marcus Wong","https://github.com/GandalfGrey123"],
		]
	])

  
end

run_seed