every 1.minute do
  runner "HardWorker.perform_async"
end