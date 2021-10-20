|=  end=@
=/  count=@  1
|-
^-  (list @)
?:  =(end count)  ~
:-  count  $(count (add 1 count))

::  1. Create a gate (function) with input "end" of type "atom" (Any int)
::  2. Create a variable called "count" of type "atom" and store 1
::  3. Recursion point, where should we jump if called internally?
::  4. Force output to be a list of atoms (Syntax "|-  ^-  (list @)" could work too)
::  5. Check if count is equal to end if so return null and end (~ is null)
::  6. Create a cell with two values:
::      count
::      Re-run, Add 1 to count and return value is added to cell.
::
::  Both lines 5 & 6 in the documentation and guides are split across
::  two lines, Hoon does not "finish" an expression untill a value is
::  obtained so by, for example running:
::    ?:  =(end count) ~
::  is the same as running
::    ?:  =(end count)
::      ~
::  since if end is equal to count, hoon will keep evaluating until it
::  finds a value (~). ~ is null & declares that a cell has ended.
::
::  This dual line vs single line also takes place on line 6. With the
::  rune :- being called to create a cell of two atoms. The first atom
::  is count with the second atom being the output of the function
::  itself running again. Returning ~ ending the cell.
::  The docs write this this way:
::    :-  count
::    $(count (add 1 count))
::  Whereas I find this following to make more sense:
::    :-  count  $(count (add 1 count)
::  I think it comes down to personal preference however I have not
::  written enough to know.
::
::  [1 [2 [3 [4 ~]]]]
::
::        .
::       / \
::      1   .
::         / \
::        2   .
::           / \
::          3   .
::             / \
::            4   ~

