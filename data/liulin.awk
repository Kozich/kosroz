function getlinepl(){
    getline LL < "gps.csv"
    GLNR++
    return 0
}
function hmstos(t,s){
    split(t,T,":")
    s=T[1]*3600+T[2]*60+T[3]
    return s
}
#function lineEa(ep){
#    for (i=3; i<=NF; i++){
#       ep+=($i)*(i-1)
#    }
#    return ep*c*e
#}
function lineEn(ep){
    for (i=3; i<=14; i++){
       ep+=($i)*(i-1)
    }
    return ep*c*e
}
function lineEp(ep){
    for (i=15; i<=NF; i++){
       ep+=($i)*(i-1)
    }
    return ep*c*e
}
BEGIN{
    FS=","
    nN=0
    m=1.398*10^(-4)
    e=1.60217662*10^(-19)
    c=81.3*10^(3)
    LL=""
    GLNR=0
    TN=0#34080
    getlinepl()
    split(LL,LLa,",")
    gs=hmstos(LLa[1])
    print "#t,h,En,Ep,Ea,H(10)"

}
$2 !~ /""/{
    ls=hmstos($2)
    En=lineEn()
    Ep=lineEp()
    if (ls == gs){
        print ls-TN FS LLa[2] FS En FS Ep FS Ep+En FS (En*1.22+Ep*6.18)
    }
    while(ls != gs){
        if(ls > gs){
            getlinepl()
            split(LL,LLa,",")
            gs=hmstos(LLa[1])
        }
        if(ls < gs){
            break
        }
        if((ls == gs) && (LLa[2]!="")){
            print ls-TN FS LLa[2] FS En FS Ep FS Ep+En FS (En*1.22+Ep*6.18)
            break
        }
    }
}
