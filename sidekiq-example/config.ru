require 'sidekiq'
require_relative 'sidekiq_config'
require 'sidekiq/web'
run Sidekiq::Web
