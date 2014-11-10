require 'sidekiq'
require_relative 'hard_workers'

100.times do |i|
  p "what!"
  HardWorker.perform_async('Bob', i)
end

