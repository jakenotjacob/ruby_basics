f = "bob"
m = "the"
l = "builder"

full_name = f << m << l
puts full_name
# Also returns the string
#2.0.0-p247 :004 > full = f << m << l
# => "bobthebuilder"

# !!Chaining concats also adds the full value to first var
#2.0.0-p247 :004 > full_name = f << m << l
#=> "bobthebuilder" 
#2.0.0-p247 :005 > f
# => "bobthebuilder"

# !! and ONLY the first var
# 2.0.0-p247 :005 > f
#=> "bobthebuilder" 
#2.0.0-p247 :006 > m
#=> "the" 
#2.0.0-p247 :007 > l
#=> "builder" 
#

# Using the + operator for concat...
another_full = f + m + l
#=> 2.0.0-p247 :004 > another_full = f + m + l
# => "bobthebuilder"
# 2.0.0-p247 :005 > f
#=> "bob" 
#2.0.0-p247 :006 > m
#=> "the" 
#2.0.0-p247 :007 > l
# => "builder" 
# !! This concats the values onto another_full, BUT will not
# change the original variable values (f, m, l)

