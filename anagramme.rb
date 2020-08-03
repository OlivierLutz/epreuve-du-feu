#!C:/Ruby27-x64/bin/ruby -w
system "clear"

lines = Array.new
File.open(ARGV[1]).each { |line| lines << line.chomp }

b = 0
somme = 0
somme_mot = 0
ARGV[0].each_byte {|x| somme_mot += x}

while b < lines.size
	lines[b].each_byte {|a| somme += a}
	if somme == somme_mot
		puts lines[b]
	end
	somme = 0
	b +=1
end


print "special arbre".split('').sort.join('')
