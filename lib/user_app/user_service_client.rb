require 'httparty'
require 'user_app/models/user'
class UserServiceClient
  include HTTParty
  base_uri 'http://user-service.com'
  def get_user
    name = JSON.parse(self.class.get("/user").body)['name']
    User.new(name)
  end
end
