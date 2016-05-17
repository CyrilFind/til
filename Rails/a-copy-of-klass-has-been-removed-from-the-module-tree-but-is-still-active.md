# Argument Error

`A copy of Klass has been removed from the module tree but is still active`

Internet tells me this:
This can happen during development when classes without automatic reloading are pointing to classes with automatic reloading

And This:

Fixed by moving `klass.rb` to `lib`, where it should have been all along
