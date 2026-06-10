# Rackup file for the qless web UI.
#
#   rackup config.ru
#
# Point it at a non-default Redis by setting the connection via Qless::Client,
# e.g. Qless::Client.new(url: ENV['REDIS_URL']).
require 'qless'
require 'qless/server'

run Qless::Server.new(Qless::Client.new)
