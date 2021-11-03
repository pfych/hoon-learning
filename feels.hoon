|=  [command=@t val=@t]
^-  @t
=<
(check command val)
|%
++  check
  |=  [command=@t val=@t]
  ^-  @t
  ?:  =(command 'pma')
    (pma val)
  ?:  =(command 'nma')
    nma
  'Mhm'
++  pma
  |=  val=@t
  ^-  @t
  val
++  nma
  'I hear you'
--

