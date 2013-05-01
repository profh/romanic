# Romanic
==========
This is a simple gem written as a class demonstration that converts integers to roman numerals and roman numerals to integers.  It adds methods to the Integer and String classes that allow a user to send a 'roman' message to either of these types of objects and get an appropriate response. More details on how to use the gem can be found below.


Installation
------------
Installing this gem is pretty simple -- just type on the command line:

```  
$ gem install romanic 
```

And add this gem into any other code with:

```  
require 'rubygems'
require 'romanic' 
```


Usage
------------
There are basically two methods to this gem:

* to_roman
* from_roman

**to_roman** -- This method simply allows an integer to be converted to its equivalent roman numeral.  Because of limitations in the roman numeral system, the integer must be positive (i.e., greater than zero) and less than 5,000. If the integer is not within these bounds, then the method will return nil.

**from_roman** -- This method looks at a string and if it is a reasonably valid roman numeral (i.e., limited to the 7 upper-case characters used in roman numerals and follows general rules) then it will convert it to its integer equivalent.  If the string is considered non-romanic, it will return nil.


### Note on usage ###

This gem has a set of basic unit tests associated with it.  The tests provide other examples of what is possible using this methods and may help the user further understand how this gem can be applied.  The testing suite requires the minitest gem to run properly.

Also note that this gem does not allow for lower-case roman numerals. Such lower-case numerals are used in outlines and publishing, but as far as I can tell (not professing expertise here) actual roman numerals are all upper-case.


Contributing
------------
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
