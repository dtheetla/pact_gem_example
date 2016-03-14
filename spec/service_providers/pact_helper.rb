require 'pact/consumer/rspec'
# or require 'pact/consumer/minitest' if you are using Minitest
Pact.service_consumer "User App" do
  has_pact_with "User Service" do
    mock_service :user_service do
      port 1234
    end
  end
end
