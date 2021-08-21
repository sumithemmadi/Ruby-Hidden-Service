require 'tor/hidden-service'

hidden_service = Tor::HiddenService.new(
  private_key: ENV['HIDDEN_SERVICE_PRIVATE_KEY'],
  server_port: ENV['PORT'] || 5000
)

hidden_service.start

require './site'
run Sinatra::Application
