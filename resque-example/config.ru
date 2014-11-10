require 'resque-retry'
require 'resque-retry/server'

# Make sure to require your workers & application code below this line:
# require '[path]/[to]/[jobs]/your_worker'

# Run the server
run Resque::Server.new