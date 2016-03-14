require 'pact/provider/rspec'
require "./spec/service_consumers/provider_states_for_user_app"
Pact.service_provider "User Service" do

  honours_pact_with 'User App' do

    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/bethesque/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.
    # pact_uri 'pacts/user_app-user_service.json'
    pact_uri File.expand_path('spec/pacts/user_app-user_service.json')
  end
end
