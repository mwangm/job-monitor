sidekiq-example

* start web page for monitor:

    `rackup`

* Run schedule task:

    `whenever --update-crontab`
    
* Run worker:
    
    `be sidekiq -r ./test.rb `