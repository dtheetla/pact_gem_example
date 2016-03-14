require_relative 'pact_helper'
require 'user_app/user_service_client'
require 'user_app/models/user'

describe UserServiceClient, :pact => true do

  before do
    # Configure your client to point to the stub service on localhost using the port you have specified
    UserServiceClient.base_uri 'localhost:1234'
  end

  subject { UserServiceClient.new }

  describe "get_user" do

    before do
      user_service.given("user exists").
        upon_receiving("a request for an user").
        with(method: :get, path: '/user', query: '').
        will_respond_with(
          status: 200,
          headers: {'Content-Type' => 'application/json'},
          body: {name: 'Betty'} )
    end

    it "returns a user" do
      expect(subject.get_user).to eq(User.new('Betty'))
    end

  end

end
