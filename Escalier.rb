#!C:/Ruby27-x64/bin/ruby -w
system "clear"
Hello
argument = ARGV
a = argument[0].to_i
b = 1
while a > 0
	puts " "*a+"#"*b
	a -=1
	b +=1
end
