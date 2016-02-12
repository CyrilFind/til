# Retrieve An Object If It Exists

Rails' has `blank?` and `present?` which are pretty useful
but [`presence`](http://api.rubyonrails.org/classes/Object.html#method-i-presence) is less known
It returns the value if it is not blank, and nil otherwise.

So this:

```ruby
my_value = Class.attribute.present? ? Class.attribute : default_value
```

becomes this:

```ruby
my_value = Class.attribute.presence || default_value
```