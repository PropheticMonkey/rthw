from_file, to_file = ARGV; 

open(to_file, 'a').write(open(from_file).read+"\n\n")
