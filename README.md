# pact_gem_example
Sample application using Rails pact gem.
```bash
##Important files
spec/pacts/*.rb
spec/service_consumers/*.rb
spec/service_providers/*.rb
lib/user_app/models/*.rb
lib/user_app/*.rb
app/controllers/user_controller.rb
config/routes.rb
Rakefile

## Test the app
rspec (generates spec/pacts/*.json)
rake pact:verify

##Output
Verifying a pact between User App and User Service
  Given user exists
    a request for an user
      with GET /user
        returns a response which
          has status code 200
          has a matching body
          includes headers
            "Content-Type" with value "application/json"
1 interaction, 0 failures
