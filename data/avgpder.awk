BEGIN {FS=","
    a=0
    h=0
    i=1
    getline
    h=$1
    a=$2
}
{
    if(h==$1){
        a+=$2
        i++
    }
    else{
        print h,(a/(10*i))
        i=1
        a=$2
        h=$1
    }
}
