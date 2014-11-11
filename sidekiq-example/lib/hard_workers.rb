require 'sidekiq'
class HardWorker
  include ::Sidekiq::Worker
  sidekiq_options :retry => 1, :dead => true

  def perform(name, count)
    rand =  rand(10)
    puts "========="
    fail "job #{rand} failed" if rand % 2 == 0
    puts "#{name} is doing some hard work"
  end

end
