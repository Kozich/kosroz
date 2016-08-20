reset
set term mp latex monochrome dashed "csr12" 12
set output "5km.mp"
set fit quiet
set logscale y
set key box top left
HK(x)=a**(b*x+c)+d
H(x)=e**(f*x+g)+i - j/(x^2)
j=1
#fit [2000:4697.7] HK(x) "../data/liulin1.dat" using 1:($2*10**12) via a,b,c,d
#fit H(x) "../data/liulin1.dat" using 1:($2*10**12) via e,f,g,i,j
plot "../data/liulinavg.dat" using 1:($2*10**12) pt 4 ps 0.5 title "Liulin"
