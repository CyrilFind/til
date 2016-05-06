# How Delayed Jobs work
They are recorded in a db table and execute their job when needed, so to know what to run and when, they store:
* A method name
* Arguments values
* A date to be run at

So, using `handle_asynchronously` like this:

````Ruby
  def awesome_method(some_bool, some_string, some_number)
    # Do awesome stuff
  end
  handle_asynchronously :awesome_method
````

And calling the method like this:

````Ruby
  awesome_method(true, MyString, 42)
````

DB will do this: 

````SQL
  SQL (0.3ms)  INSERT INTO "delayed_jobs" ("handler", "run_at", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["handler", "--- !ruby/object:Delayed::PerformableMethod\nobject: !ruby/object:SomeClass\n  thread_pool: {}\nmethod_name: :awesome_method\nargs:\n- true\n- MyString\n- 42\n"], ["run_at", "2016-05-06 12:15:17.863052"], ["created_at", "2016-05-06 12:15:17.863968"], ["updated_at", "2016-05-06 12:15:17.863968"]]
````

We see here the method and arguments are serialized and stored in `handler`

# Refactoring 

That's cool but it means that, if you are refactoring and have one of those jobs hanging around, you have to be careful with:
* Renaming the method
* Changing the arguments
* Storing too large objects in arguments, ids are better
