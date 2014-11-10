require 'resque-retry'
class HardWorker
  extend Resque::Plugins::Retry
  @queue = 'default'
  @retry_limit = 3
  @retry_delay = 10

  def self.perform
    rand =  rand(10)
    puts "========="
    puts rand
    fail "job #{rand} failed" if rand % 2 == 0
    puts "resque is doing some hard work"
  end
end
