### Hash keys and symbols
if you get this error `no implicit conversion of Symbol into Integer`, you're probably trying to access a value in a hash like this

    array[:key] #nope
  
and in fact your should do this:
  
    array['key'] #yep
  
  otherwise you can modify your hash this way:
  
    array.symbolize_keys 
    array[:key] #yep
    
