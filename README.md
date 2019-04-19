# README

keep server running:
`screen rails s`

deploying to server

  once pushed to the server run following commands...

  `bundle install` <-- install gem depedencies
  `rails db:migrate` <-- setup database 
  `rails db:seed` <-- add the static data 

  now you are ready to run the server
  
  to keep server running:
  `screen rails s`

  or run server once
  `rails s` 

* Ruby version
	Version 2.6.0

* System dependencies
	None
