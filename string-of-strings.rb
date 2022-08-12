# The challenge is to turn this string
# '9-4-7-9-2-9-6-3'
# into this string; 
# "'9','4','7','9','2','9','6','3'"

numbers = '9-4-7-9-2-9-6-3'
nfinal = []

puts numbers

numbers = numbers.split('-')
numbers.each { |n| nfinal << "'#{n}'" }
nfinal = nfinal.join(",")

puts nfinal