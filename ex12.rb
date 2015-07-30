print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 0.10
puts "10% is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number /100
puts "A smaller number is #{smaller}."
