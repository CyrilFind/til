# Unit Testing with Delayed Jobs
I've been trying to add a unit test checking an action perfomed asynchronously:

```ruby
  def my_method
    # stuff
  end
  handle_asynchronously: my_method
```
  
There's a bunch of different techniques on the interwebs but only this worked for me :

```ruby
  test 'my test' do
    my_method
    Delayed::Worker.new.work_off
    assert_something
  end
```  
  
This [`work_off`](http://www.rubydoc.info/github/collectiveidea/delayed_job/Delayed%2FWorker%3Awork_off) method can be called with the number of task you want to execute (default is 100).

I've found putting this in the test works even better:

```Ruby
  Delayed::Worker.delay_jobs = false
```
It can probably be used in test config too.

