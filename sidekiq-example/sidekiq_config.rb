Sidekiq.configure_client do |config|
  config.redis = {timeout: 5, size: 1, url: 'redis://something.com:6379' }
end

Sidekiq.configure_server do |config|
  config.redis = {timeout: 5, url: 'redis://something.com:6379' }
end