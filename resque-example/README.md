sidekiq-example

* start web page for monitor:

    `rackup`

* Run schedule task:

    `bundle exec rake resque:scheduler`
    
* Run worker:
    
    `QUEUE=* be rake resque:work`