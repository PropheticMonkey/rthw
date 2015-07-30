FPath1, FPath2, Itext = ARGV[0], ARGV[1], ARGV[2]

def write_all(rpath, wpath)
	open(wpath, "w") do |w|
		w.truncate(0)
		w.puts(open(rpath, "rt") {|r| r.read})
	end
end

def write_again(path, text)
	puts "---Writing '......Appended portion......' to test2.txt"
	open(path, "a") do |f|
		f.puts "\n\n Appended!!\n"
		10.times do
		f.puts "\n" + text + rand(10**10).to_s + "\n"
		end
	end
end

def print_file(path)
	open(path, 'r') {|file| puts file.read}
end

def rewind(f)
	f.seek(0)
end

def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

#.................................................................

puts "First let's print the whole thing to file..."
write_all(FPath1, FPath2)

puts "Let's add to the file..."
write_again(FPath2, '......Appended portion......' + Itext + ": ")

puts "Let's print the file to screen:"
print_file(FPath2)

#.................................................................