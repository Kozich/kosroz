reset
set term mp latex color dashed "csr12" 12
set output "5km.mp"
set fit quiet
set logscale y
set key on
HK(x)=a**(b*x+c)+d
H(x)=e**(f*x+g)+h
fit [1000:4697.7] HK(x) "H10.dat" using 2:1 via a,b,c,d
fit H(x) "H10.dat" using 2:1 via e,f,g,h
plot H(x) dt 2,HK(x) dt 3,"H10.dat" using 2:1 ps 0.5 pt 1
