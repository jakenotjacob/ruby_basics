@sig = 
'
___  ||Yer pal
¯¯¬|_||  Mitt3ns
  (°x°)
  /v v)
o(    )
'
to_sign = ARGV[0]
`echo "#{ @sig }" | cat - "#{ ARGV[0] }" > /tmp/out && mv /tmp/out "#{ ARGV[0] }"`




