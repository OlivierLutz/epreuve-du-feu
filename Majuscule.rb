#!C:/Ruby27-x64/bin/ruby -w
system "clear"

motTableau = ARGV

mot = ""
mot << motTableau[0] #prend l'argument du tableau ARGV et le met en string
motTableauDécomp = mot.chars #nouveau tableau avec un caractère/case

nombreCase = motTableauDécomp.size
nouveauTableau = []

b = 1
c = 0
while c < nombreCase
	if motTableauDécomp[c] == " " #si vide = passer à la case suivante => c = +1 
	nouveauTableau << motTableauDécomp[c]
	b +=0
	c +=1
	elsif b % 2 == 1 #Si lettre impair (en dehors des espaces)
	nouveauTableau << motTableauDécomp[c].downcase 
	b +=1
	c +=1
	elsif b % 2 == 0 #Si lettre pair (en dehors des espaces)
	nouveauTableau << motTableauDécomp[c].upcase 
	b +=1
	c +=1
	end
end
print nouveauTableau.join