reset
set term mp latex dashed "csr12" 12
set output "5km.mp"
set fit quiet
set logscale y
set key box top left
HK(x)=a**(b*x+c)+d
H(x)=e**(f*x+g)+i
fit [1000:4697.7] HK(x) "../data/H10.dat" using 2:1 via a,b,c,d
fit H(x) "../data/H10.dat" using 2:1 via e,f,g,i
plot H(x) dt 2,HK(x) dt 3,"../data/H10.dat" using 2:1 pt 4 ps 0.5 title "Liulin", "../data/EH10.dat" using 1:($2*1000)

