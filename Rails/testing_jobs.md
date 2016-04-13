# Unit Testing with Delayed Jobs
I've been trying to add a unit test checking an action perfomed asynchronously:

    def my_method
        # stuff
    end
    handle_asynchronously: my_method
  
  
There's a bunch of different techniques on the interwebs but only this worked for me :


    test 'my test' do
        my_method
        Delayed::Worker.new.work_off
        assert_something
    end
  
  
This [`work_of`](http://www.rubydoc.info/github/collectiveidea/delayed_job/Delayed%2FWorker%3Awork_off) method can be called with the number of task you want to execute (default is 100).
