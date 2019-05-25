# README

deploying to server

  once pushed to the server run following commands...

  `bundle install` <-- install gem depedencies
  `rails db:migrate` <-- setup database 
  `rails db:seed` <-- add the static data 

  now you are ready to run the server

      run server on aws vm:
      `rvmsudo rails server -p 80 -b 0.0.0.0`

      run serve on aws production mode:
      `rvmsudo rails server -p 80 -b 0.0.0.0 -e production`
      `rails s -p 80 -b 0.0.0.0 -e production`

      keep it running forever on aws vm:
      `rvmsudo rails server -p 80 -b 0.0.0.0 -d`
      `rvmsudo rails server -p 80 -b 0.0.0.0 -e production -d`

      keep server running (alternative):
      `screen rails s -b 0.0.0.0`


* Ruby version
	Version 2.6.0

* System dependencies
	None
