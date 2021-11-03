|=  [command=@t val=@t]
^-  @t
=<
?:  =(command 'pma')
  (pma val)
?:  =(command 'nma')
  nma
'Mhm'
|%
++  pma
  |=  val=@t
  ^-  @t
  val
++  nma
  'I hear you'
--

::  initial tinkerings for a potential "micro blogging" platform where
::  users can submit single line messages for how they feel, other users
::  see recent "feels" in a list. Started as a way to learn cores etc.
::  This is just a fun tinkering thing.
::
::    1. Create a gate with a cell input of two cords (@t is utf-8 text)
::    2. Use kethep (^-) to set the return value to a cord
::    3. Use tisgal (=<) to invert the operations
::         This means the next chunk runs after the arms of the core are
::         defined (|% etc...) this is really just syntax sugar
::  4-8. Use wutcol (?:) to check a conditional.
::         wutcol syntax can really be either:
::
::         ?:  =(foo bar) true
::           false
::
::         or
::
::         ?:  =(foo bar)
::           true
::         false
::
::         We check using wutcol if the value of command matches either pma
::         or nma. Then call a function based off of what it was equal too.
::         If the =(command 'nma') check fails we just return 'Mhm'
::    9. Use barcen (|%) to create a core, this is really just "sub
::       functions" if you really want to think of it like that.
::   10. Use luslus (++) to create an arm (one of these "sub functions")
::   11. This arm is a gate which just takes val
::   12. Again we use kethep (^-) to enforce the cord return type
::   13. We then echo val back to the user
::   14. Use luslus (++) to define another arm
::   15. this arm imediatley returns a cord.
::   16. Use hephep (--) to end the core expression
::
::   Final usage comes out as:
::
::   > +feels ['pma' 'I had a good day']
::   'I had a good day'
::
::  Things I would like to be able to figure out:
::    - How do you concat strings?
::    - Store basic text in the graph store.
::    - Basic gal interface
