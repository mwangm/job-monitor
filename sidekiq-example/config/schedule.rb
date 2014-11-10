every 1.minute do
  rake "sidekiq:hard_work"
end