# Mysterious Error:

`ArgumentError: A copy of Klass has been removed from the module tree but is still active`

### Internet tells me this:
This can happen during development when classes without automatic reloading are pointing to classes with automatic reloading

### And This:
Possible solutions:

1. Stop including your module into non reloadable classes - either include into individual models, controllers as needed or create an abstract base class and include the module in there.

2. Make this module non reloadable by storing it somewhere that isn't in autoload_paths (you'll have to require it explicitly since rails will no longer load it magically for you)
 
3. Magic: Prepend '`::`' to the klass call causing problems

### My Fix:
Moving `klass.rb` to `lib`, where it should have been all along
