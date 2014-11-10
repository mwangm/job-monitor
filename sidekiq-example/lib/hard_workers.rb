require 'sidekiq'
class HardWorker
  include ::Sidekiq::Worker

  def perform(name, count)
    rand =  rand(10)
    puts "========="
    puts rand
    fail "job #{rand} failed" if rand % 2 == 0
    puts "#{name} is doing some hard work"
  end

end
