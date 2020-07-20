#!C:/Ruby27-x64/bin/ruby -w
system "clear"

argument = ARGV
a = argument[0].to_i
tableaufactoriel = []
while a > 0
	tableaufactoriel << a
	a -=1
end

nombreCase = tableaufactoriel.size
x = 1
y = 0
c = nombreCase
while c > 0
	x *= tableaufactoriel[y]
	y +=1
	c -=1
end
print x