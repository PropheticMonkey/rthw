the_count = [1,2,3,4,5]
fruits = ['apple', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#This is the first kind of for-loop goes through a list 
#in a more traditional style found in other languages
for number in the_count
	puts "this is count #{number}"
end

fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

change.each {|i| puts "I got #{i}"}

element = []

(0..5).each do |i|
	puts "adding #{i} ro the list."
	elements.push(i)
end

elements.each {|i| puts "Elements was: #{i}"}


